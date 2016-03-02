SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create     procedure [dbo].[aagTODglHist]  @caaTrxSource char(13) as begin  set nocount on   declare @CMPANYID smallint,  @aagGetHdrID int,  @Status int,  @JRNENTRY int,  @RCTRXSEQ numeric(19,5),  @HSTYEAR int,  @TRXSORCE char(13),  @TRXDATE datetime,  @LedgerID INT   Declare @cDBName char(5),  @l_nStatus int,  @O_nSQL_Error_State int,  @l_nError int,  @l_cBBF varchar(255),  @l_cPANDL varchar(255)  select @cDBName = DB_NAME()   exec    @l_nStatus = DYNAMICS.dbo.smGetMsgString 12030, @cDBName, @l_cBBF output, @O_nSQL_Error_State output  select @l_nError = @@error  if @l_nStatus = 0 and @l_nError <> 0  select @l_nStatus = @l_nError   if ( (@l_nStatus <> 0) or (@O_nSQL_Error_State <> 0) )  return (@l_nStatus)   exec    @l_nStatus = DYNAMICS.dbo.smGetMsgString 12125, @cDBName, @l_cPANDL output, @O_nSQL_Error_State output  select @l_nError = @@error  if @l_nStatus = 0 and @l_nError <> 0  select @l_nStatus = @l_nError   if ( (@l_nStatus <> 0) or (@O_nSQL_Error_State <> 0) )  return (@l_nStatus)   select  @CMPANYID = CMPANYID from DYNAMICS.dbo.SY01500 where INTERID = DB_NAME()   declare CGLOPEN cursor fast_forward for   select JRNENTRY, RCTRXSEQ,HSTYEAR,TRXSORCE,TRXDATE,Ledger_ID  from GL30000   group by HSTYEAR,JRNENTRY,RCTRXSEQ,TRXSORCE,TRXDATE,Ledger_ID  open CGLOPEN   fetch next from CGLOPEN into @JRNENTRY,@RCTRXSEQ,@HSTYEAR,@TRXSORCE,@TRXDATE,@LedgerID  while @@fetch_status =0  begin  exec DYNAMICS..aagGetNextID 30000, @CMPANYID, @aagGetHdrID out, @Status   insert into AAG40000  (aaGLHdrID,JRNENTRY,RCTRXSEQ,YEAR1,aaTRXType,aaGLTRXSource,aaTRXSource,GLPOSTDT,Ledger_ID)  values(@aagGetHdrID,@JRNENTRY,@RCTRXSEQ,@HSTYEAR,1,@TRXSORCE,' ',@TRXDATE,@LedgerID)    fetch next from CGLOPEN into @JRNENTRY,@RCTRXSEQ,@HSTYEAR,@TRXSORCE,@TRXDATE,@LedgerID  end   close CGLOPEN  deallocate CGLOPEN   insert into AAG40001   (aaGLHdrID,  aaGLDistID, INTERID , CorrespondingUnit, ACTINDX, ACCTTYPE ,  aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT,  CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1,  RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR,   aaCustID, aaVendID, aaSiteID, aaItemID, aaCopyStatus,aaChangeDate, aaChangeTime)  select dbo.aagGetHdrID(0,1,' ',' ',JRNENTRY,RCTRXSEQ, TRXDATE,HSTYEAR,TRXSORCE,40000),  DEX_ROW_ID,  DB_NAME() ,CorrespondingUnit,ACTINDX, dbo.aagGetAccountType(ACTINDX),  0,2,  DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT,  CURNCYID, CURRNIDX, RATETPID,  EXGTBLID, XCHGRATE, EXCHDATE,TIME1,  RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR,'',  '', '', '', 8,convert(char(12), getdate(), 102), convert(char(12), getdate(), 108)  from GL30000 where SOURCDOC not in(@l_cBBF, @l_cPANDL)   insert into AAG40001   (aaGLHdrID,  aaGLDistID, INTERID , CorrespondingUnit, ACTINDX, ACCTTYPE ,  aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT,  CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1,  RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, SOURCDOC,  aaCustID, aaVendID, aaSiteID, aaItemID, aaCopyStatus,aaChangeDate, aaChangeTime)  select dbo.aagGetHdrID(0,1,' ',' ',JRNENTRY,RCTRXSEQ, TRXDATE,HSTYEAR,TRXSORCE,40000),  DEX_ROW_ID,  DB_NAME() ,CorrespondingUnit,ACTINDX, dbo.aagGetAccountType(ACTINDX),  0,2,  DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT,  CURNCYID, CURRNIDX, RATETPID,  EXGTBLID, XCHGRATE, EXCHDATE,TIME1,  RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR,SOURCDOC,'',  '', '', '', 8,convert(char(12), getdate(), 102), convert(char(12), getdate(), 108)  from GL30000 where SOURCDOC in(@l_cBBF, @l_cPANDL)   Update AAG40001 SET aaGLDistID=0-aaGLDistID where  aaGLHdrID not in (select distinct aaGLHdrID from AAG40002)  UPDATE AAG40001   SET aaGLDistID = (SELECT COUNT(1) FROM AAG40001 AA WHERE AAG40001.DEX_ROW_ID >= AA.DEX_ROW_ID AND AA.aaGLHdrID = AAG40001.aaGLHdrID)   where AAG40001.aaGLHdrID not in (select distinct aaGLHdrID from AAG40002)   insert into AAG40002  (aaGLHdrID,aaGLDistID,aaGLAssignID,DEBITAMT,CRDTAMNT,ORDBTAMT,ORCRDAMT,aaAssignedPercent,  DistRef,NOTEINDX)  select aaGLHdrID,aaGLDistID,1,DEBITAMT,CRDTAMNT,ORDBTAMT,ORCRDAMT,10000,  ' ',0 from AAG40001    set nocount off end    
GO
GRANT EXECUTE ON  [dbo].[aagTODglHist] TO [DYNGRP]
GO
