SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ncICPrintAlternateEditList] 	@BACHNUMB	char(15), 	@Option		smallint /*1) GL-Insert 2)GL-Delete 3)PM-Insert 4)PM-Delete*/ as 	/* This procedure will print the edit list for Alternate account method 	vilasw@nolancomputers.com	date:4-September-2007 	*/ begin 	set nocount on 	declare @JRNENTRY			int, 		@ACTINDX			int, 		@NC_Src_IC_Account_Index	int, 		@NC_Dest_IC_Account_Index	int, 		@NC_Dest_Account_Index		int, 		@SQNCLINE			numeric(19,5), 		@CMPANYID			smallint, 		@SCMPANYID			smallint, 		@INTERID			char(5), 		@VCHNUMWK			char(21), 		@DSTINDX			int, 		@DSTSQNUM			int, 		@DBNAME				char(5), 		@SOURCDOC			char(10), 		@DTAControlNum		char(21), 		@SQLStr				nvarchar(1000), 		@Param				nvarchar(1000), 		@Status				smallint, 		@ACTDESCR			varchar(200), 		@ACTNUMST			varchar(200) 	 	delete NCGL10002 	delete NCPM10102 	if @Option = 1 /*GL- Insert*/ 	begin		 		declare GLDC cursor fast_forward for  		select ACTINDX,SQNCLINE,JRNENTRY from GL10001  			where BACHNUMB = @BACHNUMB and  			JRNENTRY in (select JRNENTRY from GL10000 where BACHNUMB = @BACHNUMB) and  			ACTINDX in (select NC_Src_IC_Account_Index from NCIC3005) 			 		open GLDC 		fetch next from GLDC into @ACTINDX, @SQNCLINE,@JRNENTRY 		while @@fetch_status = 0 		begin			 			set @NC_Dest_Account_Index = 0 			set @NC_Dest_IC_Account_Index = 0 			set @NC_Src_IC_Account_Index = 0 			set @CMPANYID = 0 			set @DBNAME = db_name()			 			select @SCMPANYID = CMPANYID from DYNAMICS..SY01500 where INTERID = @DBNAME			 			select 	@NC_Dest_Account_Index = NC_Dest_Account_Index,  				@NC_Dest_IC_Account_Index = NC_Dest_IC_Account_Index, 				@NC_Src_IC_Account_Index = NC_Src_IC_Account_Index, 				@CMPANYID = CMPANYID 				from NCIC3006 where JRNENTRY = @JRNENTRY and SQNCLINE = @SQNCLINE 			if @@rowcount = 0 			begin 				select @SOURCDOC = SOURCDOC, @DTAControlNum = DTAControlNum from GL10000 where JRNENTRY = @JRNENTRY 				if @DTAControlNum <> ''	 				begin					 					select 	@NC_Dest_Account_Index = NC_Dest_Account_Index,  					@NC_Dest_IC_Account_Index = NC_Dest_IC_Account_Index, 					@NC_Src_IC_Account_Index = NC_Src_IC_Account_Index, 					@CMPANYID = CMPANYID 					from NCIC3006 where VCHRNMBR = @DTAControlNum and SQNCLINE = @SQNCLINE 				end 		  			end 		 			select @INTERID = INTERID from DYNAMICS..SY01500 where CMPANYID = @CMPANYID 			 			if not exists(select ORCOMID from DYNAMICS..IC40100  				where ORCOMID = @DBNAME and DSTCOMID = @INTERID) 			begin 				if not exists(select ORCOMID from DYNAMICS..IC40100  					where ORCOMID = @INTERID and DSTCOMID = @DBNAME) 				begin 					if @DBNAME is not null and @INTERID is not null 					begin 						insert into DYNAMICS..IC40100(ORCOMID,DSTCOMID,ORGFRIDX,ORGTOIDX,DSTFRIDX,DSTTOIDX,USER2ENT) 							values(@DBNAME,@INTERID,@NC_Src_IC_Account_Index,@NC_Src_IC_Account_Index,@NC_Dest_IC_Account_Index,@NC_Dest_IC_Account_Index,'IC') 					end 				end 			end 			if @NC_Dest_Account_Index is null set @NC_Dest_Account_Index = 0 			if @NC_Dest_Account_Index <> 0 			begin 				insert into NCGL10002  					(BACHNUMB,JRNENTRY,SQNCLINE,ACTINDX,ACTNUMST,ACTDESCR,XCHGRATE,DSCRIPTN,GLLINMSG, 					GLLINMS2,CURRNIDX,GLLINVAL,ACCTTYPE,FXDORVAR,BALFRCLC,PSTNGTYP, 					DECPLACS,ORCTRNUM,ORDOCNUM,ORMSTRID,ORMSTRNM,ORTRXTYP,OrigSeqNum, 					ORTRXDESC,DTA_GL_Status,INTERID,RATETPID,EXGTBLID,EXCHDATE,TIME1, 					RTCLCMTD,CRDTAMNT,DEBITAMT,ORCRDAMT,ORDBTAMT,DENXRATE,MCTRXSTT, 					LNESTAT,CorrespondingUnit) 					select BACHNUMB,JRNENTRY,SQNCLINE,ACTINDX,dbo.ncGetAccountInfo(ACTINDX,2),dbo.ncGetAccountInfo(ACTINDX,1),XCHGRATE,DSCRIPTN,GLLINMSG, 					GLLINMS2,CURRNIDX,GLLINVAL,ACCTTYPE,FXDORVAR,BALFRCLC,PSTNGTYP, 					DECPLACS,ORCTRNUM,ORDOCNUM,ORMSTRID,ORMSTRNM,ORTRXTYP,OrigSeqNum, 					ORTRXDESC,DTA_GL_Status,INTERID,RATETPID,EXGTBLID,EXCHDATE,TIME1, 					RTCLCMTD,CRDTAMNT,DEBITAMT,ORCRDAMT,ORDBTAMT,DENXRATE,MCTRXSTT, 					LNESTAT,CorrespondingUnit from GL10001  					where BACHNUMB = @BACHNUMB and JRNENTRY = @JRNENTRY and 					SQNCLINE not in (select SQNCLINE from NCGL10002  					where BACHNUMB = @BACHNUMB and JRNENTRY = @JRNENTRY) 				select @SQLStr =  'select @ACTDESCR = ACTDESCR from ' +@INTERID+'..GL00100 where ACTINDX = @NC_Dest_IC_Account_Index ' 		 				select @Param  =  	N'@ACTDESCR		varchar(200) output, 									@NC_Dest_IC_Account_Index int' 				exec @Status = sp_executesql @SQLStr,@Param,  					@ACTDESCR = @ACTDESCR output, 					@NC_Dest_IC_Account_Index = @NC_Dest_IC_Account_Index 				select @SQLStr =  'select @ACTNUMST = ACTNUMST from ' +@INTERID+'..GL00105 where ACTINDX = @NC_Dest_IC_Account_Index ' 		 				select @Param  =  	N'@ACTNUMST		varchar(200) output, 									@NC_Dest_IC_Account_Index int' 				exec @Status = sp_executesql @SQLStr,@Param,  					@ACTNUMST = @ACTNUMST output, 					@NC_Dest_IC_Account_Index = @NC_Dest_IC_Account_Index 				if @NC_Dest_Account_Index <> 0 				begin 					insert into NCGL10002  						(BACHNUMB,JRNENTRY,SQNCLINE,ACTINDX,ACTNUMST,ACTDESCR,XCHGRATE,DSCRIPTN,GLLINMSG, 						GLLINMS2,CURRNIDX,GLLINVAL,ACCTTYPE,FXDORVAR,BALFRCLC,PSTNGTYP, 						DECPLACS,ORCTRNUM,ORDOCNUM,ORMSTRID,ORMSTRNM,ORTRXTYP,OrigSeqNum, 						ORTRXDESC,DTA_GL_Status,INTERID,RATETPID,EXGTBLID,EXCHDATE,TIME1, 						RTCLCMTD,CRDTAMNT,DEBITAMT,ORCRDAMT,ORDBTAMT,DENXRATE,MCTRXSTT, 						LNESTAT,CorrespondingUnit) 						select BACHNUMB,JRNENTRY,SQNCLINE + 10,@NC_Dest_IC_Account_Index,@ACTNUMST,@ACTDESCR,XCHGRATE,DSCRIPTN,GLLINMSG, 						GLLINMS2,CURRNIDX,GLLINVAL,ACCTTYPE,FXDORVAR,BALFRCLC,PSTNGTYP, 						DECPLACS,ORCTRNUM,ORDOCNUM,ORMSTRID,ORMSTRNM,ORTRXTYP,SQNCLINE * -1, 						ORTRXDESC,DTA_GL_Status,@INTERID,RATETPID,EXGTBLID,EXCHDATE,TIME1, 						RTCLCMTD,DEBITAMT,CRDTAMNT,ORDBTAMT,ORCRDAMT,DENXRATE,MCTRXSTT, 						LNESTAT,CorrespondingUnit from GL10001  						where BACHNUMB = @BACHNUMB and JRNENTRY = @JRNENTRY and  						SQNCLINE = @SQNCLINE and ACTINDX = @ACTINDX 				end  				select @SQLStr =  'select @ACTDESCR = ACTDESCR from ' +@INTERID+'..GL00100 where ACTINDX = @NC_Dest_Account_Index ' 		 				select @Param  =  	N'@ACTDESCR		varchar(200) output, 									@NC_Dest_Account_Index int' 				exec @Status = sp_executesql @SQLStr,@Param,  					@ACTDESCR = @ACTDESCR output, 					@NC_Dest_Account_Index = @NC_Dest_Account_Index 				select @SQLStr =  'select @ACTNUMST = ACTNUMST from ' +@INTERID+'..GL00105 where ACTINDX = @NC_Dest_Account_Index ' 		 				select @Param  =  	N'@ACTNUMST		varchar(200) output, 									@NC_Dest_Account_Index int' 				exec @Status = sp_executesql @SQLStr,@Param,  					@ACTNUMST = @ACTNUMST output, 					@NC_Dest_Account_Index = @NC_Dest_Account_Index 				if @NC_Dest_Account_Index <> 0 				begin 					insert into NCGL10002  						(BACHNUMB,JRNENTRY,SQNCLINE,ACTINDX,ACTNUMST,ACTDESCR,XCHGRATE,DSCRIPTN,GLLINMSG, 						GLLINMS2,CURRNIDX,GLLINVAL,ACCTTYPE,FXDORVAR,BALFRCLC,PSTNGTYP, 						DECPLACS,ORCTRNUM,ORDOCNUM,ORMSTRID,ORMSTRNM,ORTRXTYP,OrigSeqNum, 						ORTRXDESC,DTA_GL_Status,INTERID,RATETPID,EXGTBLID,EXCHDATE,TIME1, 						RTCLCMTD,CRDTAMNT,DEBITAMT,ORCRDAMT,ORDBTAMT,DENXRATE,MCTRXSTT, 						LNESTAT,CorrespondingUnit) 						select BACHNUMB,JRNENTRY,SQNCLINE + 20,@NC_Dest_Account_Index,@ACTNUMST,@ACTDESCR,XCHGRATE,DSCRIPTN,GLLINMSG, 						GLLINMS2,CURRNIDX,GLLINVAL,ACCTTYPE,FXDORVAR,BALFRCLC,PSTNGTYP, 						DECPLACS,ORCTRNUM,ORDOCNUM,ORMSTRID,ORMSTRNM,ORTRXTYP,SQNCLINE * -1, 						ORTRXDESC,DTA_GL_Status,@INTERID,RATETPID,EXGTBLID,EXCHDATE,TIME1, 						RTCLCMTD,CRDTAMNT,DEBITAMT,ORCRDAMT,ORDBTAMT,DENXRATE,MCTRXSTT, 						LNESTAT,CorrespondingUnit from GL10001  						where BACHNUMB = @BACHNUMB and JRNENTRY = @JRNENTRY and  						SQNCLINE = @SQNCLINE and ACTINDX = @ACTINDX 				end 			end 			set @ACTINDX = 0 			set @SQNCLINE = 0 			set @JRNENTRY = 0 			fetch next from GLDC into @ACTINDX, @SQNCLINE,@JRNENTRY 		end 		close GLDC 		deallocate GLDC 	end /*GL- Insert*/ 	if @Option = 3 /*PM - Insert */ 	begin		 		declare PMDC cursor fast_forward for 		select DSTSQNUM,DSTINDX,VCHRNMBR from PM10100  			where VCHRNMBR in (select VCHNUMWK from PM10000 where BACHNUMB = @BACHNUMB) and 			DSTINDX in (select NC_Src_IC_Account_Index from NCIC3005) 	 			order by VCHRNMBR, DSTSQNUM 		open PMDC 		fetch next from PMDC into @DSTSQNUM,@DSTINDX,@VCHNUMWK 		while @@fetch_status = 0 		begin 			print @VCHNUMWK 			set @NC_Dest_Account_Index = 0 			set @NC_Dest_IC_Account_Index = 0 			set @NC_Src_IC_Account_Index = 0 			set @CMPANYID = 0 			set @DBNAME = db_name() 			select @SCMPANYID = CMPANYID from DYNAMICS..SY01500 where INTERID = @DBNAME				 			select 	@NC_Dest_Account_Index = NC_Dest_Account_Index,  				@NC_Dest_IC_Account_Index = NC_Dest_IC_Account_Index, 				@NC_Src_IC_Account_Index = NC_Src_IC_Account_Index, 				@CMPANYID = CMPANYID 				from NCIC3006 where VCHRNMBR = @VCHNUMWK and SQNCLINE = @DSTSQNUM						 			 			select @INTERID = INTERID from DYNAMICS..SY01500 where CMPANYID = @CMPANYID 			 			if not exists(select ORCOMID from DYNAMICS..IC40100  				where ORCOMID = @DBNAME and DSTCOMID = @INTERID) 			begin 				if not exists(select ORCOMID from DYNAMICS..IC40100  					where ORCOMID = @INTERID and DSTCOMID = @DBNAME) 				begin 					if @DBNAME is not null and @INTERID is not null 					begin 						insert into DYNAMICS..IC40100(ORCOMID,DSTCOMID,ORGFRIDX,ORGTOIDX,DSTFRIDX,DSTTOIDX,USER2ENT) 							values(@DBNAME,@INTERID,@NC_Src_IC_Account_Index,@NC_Src_IC_Account_Index,@NC_Dest_IC_Account_Index,@NC_Dest_IC_Account_Index,'IC') 					end 				end 			end 			if @NC_Dest_Account_Index is null set @NC_Dest_Account_Index = 0 			if @NC_Dest_Account_Index <> 0 			begin 				insert into NCPM10102 					(VCHRNMBR,DSTSQNUM,CNTRLTYP,CRDTAMNT,DEBITAMT,DSTINDX,ACTNUMST,ACTDESCR,DISTTYPE,CHANGED, 					USERID,PSTGSTUS,VENDORID,TRXSORCE,PSTGDATE,INTERID,CURNCYID,CURRNIDX, 					ORCRDAMT,ORDBTAMT,APTVCHNM,APTODCTY,SPCLDIST,DistRef,RATETPID,EXGTBLID, 					XCHGRATE,EXCHDATE,TIME1,RTCLCMTD,DECPLACS,EXPNDATE,ICCURRID,ICCURRIX, 					DENXRATE,MCTRXSTT,CorrespondingUnit,BACHNUMB) 					select VCHRNMBR,DSTSQNUM,CNTRLTYP,CRDTAMNT,DEBITAMT,DSTINDX,dbo.ncGetAccountInfo(DSTINDX,2),dbo.ncGetAccountInfo(DSTINDX,1),DISTTYPE,CHANGED, 					USERID,PSTGSTUS,VENDORID,TRXSORCE,PSTGDATE,INTERID,CURNCYID,CURRNIDX, 					ORCRDAMT,ORDBTAMT,APTVCHNM,APTODCTY,SPCLDIST,DistRef,RATETPID,EXGTBLID, 					XCHGRATE,EXCHDATE,TIME1,RTCLCMTD,DECPLACS,EXPNDATE,ICCURRID,ICCURRIX, 					DENXRATE,MCTRXSTT,CorrespondingUnit,@BACHNUMB 					from PM10100 where VCHRNMBR = @VCHNUMWK and  					DSTSQNUM not in (select DSTSQNUM from NCPM10102 where VCHRNMBR = @VCHNUMWK) 				 				select @SQLStr =  'select @ACTDESCR = ACTDESCR from ' +@INTERID+'..GL00100 where ACTINDX = @NC_Dest_IC_Account_Index ' 		 				select @Param  =  	N'@ACTDESCR		varchar(200) output, 									@NC_Dest_IC_Account_Index int' 				exec @Status = sp_executesql @SQLStr,@Param,  					@ACTDESCR = @ACTDESCR output, 					@NC_Dest_IC_Account_Index = @NC_Dest_IC_Account_Index 				select @SQLStr =  'select @ACTNUMST = ACTNUMST from ' +@INTERID+'..GL00105 where ACTINDX = @NC_Dest_IC_Account_Index ' 		 				select @Param  =  	N'@ACTNUMST		varchar(200) output, 									@NC_Dest_IC_Account_Index int' 				exec @Status = sp_executesql @SQLStr,@Param,  					@ACTNUMST = @ACTNUMST output, 					@NC_Dest_IC_Account_Index = @NC_Dest_IC_Account_Index 				insert into NCPM10102 					(VCHRNMBR,DSTSQNUM,CNTRLTYP,CRDTAMNT,DEBITAMT,DSTINDX,ACTNUMST,ACTDESCR,DISTTYPE,CHANGED, 					USERID,PSTGSTUS,VENDORID,TRXSORCE,PSTGDATE,INTERID,CURNCYID,CURRNIDX, 					ORCRDAMT,ORDBTAMT,APTVCHNM,APTODCTY,SPCLDIST,DistRef,RATETPID,EXGTBLID, 					XCHGRATE,EXCHDATE,TIME1,RTCLCMTD,DECPLACS,EXPNDATE,ICCURRID,ICCURRIX, 					DENXRATE,MCTRXSTT,CorrespondingUnit,BACHNUMB) 					select VCHRNMBR,DSTSQNUM + 10 ,CNTRLTYP,DEBITAMT,CRDTAMNT,@NC_Dest_IC_Account_Index,@ACTNUMST,@ACTDESCR,DISTTYPE,CHANGED, 					USERID,PSTGSTUS,VENDORID,TRXSORCE,PSTGDATE,@INTERID,CURNCYID,CURRNIDX, 					ORDBTAMT, ORCRDAMT,APTVCHNM,APTODCTY,SPCLDIST,DistRef,RATETPID,EXGTBLID, 					XCHGRATE,EXCHDATE,TIME1,RTCLCMTD,DECPLACS,EXPNDATE,ICCURRID,ICCURRIX, 					DENXRATE,MCTRXSTT,'IC',@BACHNUMB 					from PM10100 where VCHRNMBR = @VCHNUMWK and DSTSQNUM = @DSTSQNUM and 					DSTINDX = @DSTINDX 			 				select @SQLStr =  'select @ACTDESCR = ACTDESCR from ' +@INTERID+'..GL00100 where ACTINDX = @NC_Dest_Account_Index ' 		 				select @Param  =  	N'@ACTDESCR		varchar(200) output, 									@NC_Dest_Account_Index int' 				exec @Status = sp_executesql @SQLStr,@Param,  					@ACTDESCR = @ACTDESCR output, 					@NC_Dest_Account_Index = @NC_Dest_Account_Index 				select @SQLStr =  'select @ACTNUMST = ACTNUMST from ' +@INTERID+'..GL00105 where ACTINDX = @NC_Dest_Account_Index ' 		 				select @Param  =  	N'@ACTNUMST		varchar(200) output, 									@NC_Dest_Account_Index int' 				exec @Status = sp_executesql @SQLStr,@Param,  					@ACTNUMST = @ACTNUMST output, 					@NC_Dest_Account_Index = @NC_Dest_Account_Index 				insert into NCPM10102 					(VCHRNMBR,DSTSQNUM,CNTRLTYP,CRDTAMNT,DEBITAMT,DSTINDX,ACTNUMST,ACTDESCR,DISTTYPE,CHANGED, 					USERID,PSTGSTUS,VENDORID,TRXSORCE,PSTGDATE,INTERID,CURNCYID,CURRNIDX, 					ORCRDAMT,ORDBTAMT,APTVCHNM,APTODCTY,SPCLDIST,DistRef,RATETPID,EXGTBLID, 					XCHGRATE,EXCHDATE,TIME1,RTCLCMTD,DECPLACS,EXPNDATE,ICCURRID,ICCURRIX, 					DENXRATE,MCTRXSTT,CorrespondingUnit,BACHNUMB) 					select VCHRNMBR,DSTSQNUM + 20 ,CNTRLTYP,CRDTAMNT,DEBITAMT,@NC_Dest_Account_Index,@ACTNUMST,@ACTDESCR,DISTTYPE,CHANGED, 					USERID,PSTGSTUS,VENDORID,TRXSORCE,PSTGDATE,@INTERID,CURNCYID,CURRNIDX, 					ORCRDAMT,ORDBTAMT,APTVCHNM,APTODCTY,SPCLDIST,DistRef,RATETPID,EXGTBLID, 					XCHGRATE,EXCHDATE,TIME1,RTCLCMTD,DECPLACS,EXPNDATE,ICCURRID,ICCURRIX, 					DENXRATE,MCTRXSTT,'IC' ,@BACHNUMB  					from PM10100 where VCHRNMBR = @VCHNUMWK and DSTSQNUM = @DSTSQNUM and 					DSTINDX = @DSTINDX 			end  			fetch next from PMDC into @DSTSQNUM,@DSTINDX,@VCHNUMWK 		end 		close PMDC 		deallocate PMDC 	end /*PM - Insert */ 	 	set nocount off end  
GO
GRANT EXECUTE ON  [dbo].[ncICPrintAlternateEditList] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[ncICPrintAlternateEditList] TO [public]
GO
