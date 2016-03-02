SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ncValidateDestSummaryJournal] 	@I_iCompanyNum smallint, 			/* target company number */ 	@I_iJrnEntry int,				/* old journal number being processed*/ 	@I_sUserId char(15) = NULL,			/* current user id */ 	@O_iJournalRequired int = NULL output	        /* returns 0 if no journal required and 1 if it is*/ /*Get all distributions for this journal and check that they don't all net to 0*/ as /*Displays rows where the account dosen't balance to zero for given a journal number and company*/ select @O_iJournalRequired=case count(all DestinationAccountIndex) when 0 then 0 else 1 end  from ( select DestinationAccountIndex,sum(Amount) 'Amount' from (select NC_Dest_Account_Index 'DestinationAccountIndex',(CRDTAMNT-DEBITAMT) 'Amount' from DYNAMICS.dbo.NCIC1004 where CMPANYID = @I_iCompanyNum and USERID = @I_sUserId and JRNENTRY=@I_iJrnEntry union all  select NC_Dest_IC_Account_Index 'DestinationAccountIndex',(CRDTAMNT-DEBITAMT) 'Amount' from DYNAMICS.dbo.NCIC1004 where CMPANYID = @I_iCompanyNum and USERID = @I_sUserId and JRNENTRY=@I_iJrnEntry) as InterPostings group by InterPostings.DestinationAccountIndex having Sum(Amount)<>0) as SummaryInterPostings  
GO
GRANT EXECUTE ON  [dbo].[ncValidateDestSummaryJournal] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[ncValidateDestSummaryJournal] TO [public]
GO
