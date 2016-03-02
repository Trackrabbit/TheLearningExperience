SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ncCheckSunModsSegments] 	@I_iTriggerAccountIndx int = NULL, 	@I_nSequenceLine numeric(19,5) = NULL, 	@I_iJrnEntry int = NULL, 	/* Mike South 28.02.2006*/ 	@I_sTransactionType smallint = NULL, 	@I_sCreditOrDebit smallint = NULL, /*credit =1 / Debit =2*/ 	/**/ 	@O_iReject tinyint = NULL output as declare  	@iDebitActIndx int, 	@iCreditActIndx int, 	@iDebitRowCount int, 	@iCreditRowCount int, 	@iCompanySegNum int, 	/*07.11.2006 Mike South*/ 	@iSegmentBalancing int, 	@iFullLineChecking int, 	/**/ 	@sCreditCompanySeg char(10), 	@sDebitCompanySeg char(10), 	@sTriggerCompanySeg char(10), 	@nLocalSequenceLine numeric(19,5), 	@cLogMsg char(255), 	@cCmd varchar(400), 	@iCount int, 	@AUTO_REV_TRX smallint, 	@CREDIT smallint, 	@DEBIT smallint, 	@NC_Intracompany tinyint 	 select @O_iReject = 0 /* IB 17/11/05 - Procedure to check Suns custom modification, i.e. that if there is an company segment set up and there    is only one debit line (or credit line now) and the trigger account passed in matches the debit lines company segment then     return a true (true = dont process) */ select @NC_Intracompany = NC_Intracompany from NCIC0003 where NC_Trigger_Account_Index = @I_iTriggerAccountIndx if @NC_Intracompany = 0 return  /* IB - 20/06/06, Added Intercompany Log table */ select @cLogMsg = 'ncCheckSunModsSegments started. JE:'+ str(@I_iJrnEntry) +' Trigger Account: ' + str(@I_iTriggerAccountIndx) exec dbo.ncWriteInterLog @cLogMsg /* grab the Sun setup */ select @iCompanySegNum = NC_SpareInts_5,@iSegmentBalancing=NC_SpareInts_9,@iFullLineChecking=NC_SpareInts_7 from NCIC3000 /* Mike South 15/08/2006 if not setup return */ if @iCompanySegNum = 0  	return /**/ /* Mike South 28.02.2006*/ select @AUTO_REV_TRX = 4,@CREDIT = 1,@DEBIT = 2 if @I_sTransactionType=@AUTO_REV_TRX  begin 	/*As it's a reversing transaction line we need to flip the credit/debit so it does the same test as 	  if it wasn't a debit or credit*/ 	if @I_sCreditOrDebit=@CREDIT 		select @I_sCreditOrDebit=@DEBIT 	else 		select @I_sCreditOrDebit=@CREDIT end /**/ 	 /*Mike South 15/08/2006 not needed here*/ /*if @iDebitRowCount = 1 and @iCompanySegNum != 0 	select @nLocalSequenceLine = SQNCLINE from GL10001 where JRNENTRY = @I_iJrnEntry and DEBITAMT > 0*/ /* IB 22/06/06 - Its my birthday! - if full line stuff is turned on, check if all the lines for this account segment are    the same, if so, reject it. */ if @iFullLineChecking = 1  begin 	select @cCmd = 'insert into #ncSegmentCount '+ 		'select count(1) from ( '+ 		'select GL00100.ACTNUMBR_'+convert(varchar,@iCompanySegNum)+' from GL10001 '+ 		'join GL00100 on GL00100.ACTINDX = GL10001.ACTINDX '+ 		'where JRNENTRY = '+convert(varchar,@I_iJrnEntry) +    		' group by GL00100.ACTNUMBR_'+convert(varchar,@iCompanySegNum)+' having sum(DEBITAMT-CRDTAMNT) <> 0) TEST ' 	create table #ncSegmentCount ( SEG_COUNT int ) 	exec( @cCmd ) 	select @iCount = (select top 1 SEG_COUNT from #ncSegmentCount) 	drop table #ncSegmentCount 	if(@iCount = 0) 	begin 		select @O_iReject = 1;	 		/* IB - 20/06/06, Added Intercompany Log table */ 		exec dbo.ncWriteInterLog 'ncCheckSunModsSegments: Full Line Checking: Rejected as all lines have same segment value' 	end	 	else 	begin  		select @cCmd = 'Count = '+convert(varchar,@iCount) + 'Segment = '+convert(varchar,@iCompanySegNum) + ' Jrn:' + convert(varchar,@I_iJrnEntry) 		exec dbo.ncWriteInterLog @cCmd 	end end /*07.11.2006 Mike South -  Made segment balancing an option*/ if @iSegmentBalancing=1 /**/ begin 	/*if a credit then only check against debits*/ 	/* Mike South 28.02.2006*/ 	if @I_sCreditOrDebit=@CREDIT 	begin 	/**/ 		/* count the debit lines for this transaction */ 		select @iDebitRowCount = count(1) from GL10001 where JRNENTRY = @I_iJrnEntry and DEBITAMT > 0 	 		/* If and only if there is one line continue */ 		if @iDebitRowCount = 1 		begin 		 			/*Mike South 15/08/2006*/ 			/*Get sequence number of debit line*/ 			select @nLocalSequenceLine = SQNCLINE from GL10001 where JRNENTRY = @I_iJrnEntry and DEBITAMT > 0 			/**/ 		 			/* get debit account index*/ 			select @iDebitActIndx = ACTINDX from GL10001 where JRNENTRY = @I_iJrnEntry and DEBITAMT > 0 			/* make sure that we are not testing ourself! */ 			if @nLocalSequenceLine != @I_nSequenceLine  			begin 				/* grab the company segment of the trigger account */ 				exec ncGetAcctSegment @I_iTriggerAccountIndx, @iCompanySegNum, @sTriggerCompanySeg output 			 				/* grab the company segment of the debit account */ 				exec ncGetAcctSegment @iDebitActIndx, @iCompanySegNum, @sDebitCompanySeg output 			 				if (@sTriggerCompanySeg = @sDebitCompanySeg) AND (@sTriggerCompanySeg <> '--ERROR--')  				begin 					select @O_iReject = 1;	 					/* IB - 20/06/06, Added Intercompany Log table */ 					exec dbo.ncWriteInterLog 'ncCheckSunModsSegments: Rejected as trigger company seg = debit lines company segment' 				end 			end 		end 	end 	else 	begin 		/*must be a debit*/ 		/* count the credit lines for this transaction */ 		select @iCreditRowCount = count(1) from GL10001 where JRNENTRY = @I_iJrnEntry and CRDTAMNT > 0 		 		/*Mike South 15/08/2006 */ 		/*elseif @iCreditRowCount = 1 */ 		if @iCreditRowCount = 1  		/**/ 		begin 			/*Get credit account index*/ 			select @iCreditActIndx = ACTINDX, @nLocalSequenceLine = SQNCLINE from  			GL10001 where JRNENTRY = @I_iJrnEntry and CRDTAMNT > 0 		 			/* make sure that we are not testing ourself! */ 			if @nLocalSequenceLine != @I_nSequenceLine  			begin 				/* grab the company segment of the trigger account */ 				exec ncGetAcctSegment @I_iTriggerAccountIndx, @iCompanySegNum, @sTriggerCompanySeg output 			 				/* grab the company segment of the debit account */ 				exec ncGetAcctSegment @iCreditActIndx, @iCompanySegNum, @sCreditCompanySeg output 			 				if (@sTriggerCompanySeg = @sCreditCompanySeg) AND (@sTriggerCompanySeg <> '--ERROR--') 				begin		 					select @O_iReject = 1;	 					/* IB - 20/06/06, Added Intercompany Log table */ 					exec dbo.ncWriteInterLog 'ncCheckSunModsSegments: Rejected as trigger company seg = credit lines company segment' 				end  			end 		end 	end end  
GO
GRANT EXECUTE ON  [dbo].[ncCheckSunModsSegments] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[ncCheckSunModsSegments] TO [public]
GO