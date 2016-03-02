SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE  [dbo].[aaMoveGLtoHist] @YEAR1 smallint, @O_SQL_ERROR_STATE int   = NULL output, @I_CreateDefaultAARecForBBFJrnl int AS BEGIN  SET NOCOUNT ON   DECLARE @aaGLHdrID int   DECLARE @JRNENTRY  int   DECLARE @KPGTRXHS  tinyint   declare @CMPANYID smallint,  @l_nIsNextYearClose bit,  @l_nNextYear int,  @l_nStatus int,  @l_cPROFIT_AND_LOSS varchar(255),  @l_cBBF varchar(255),  @O_nSQL_Error_State int,  @l_nError int,  @cDBName char(5),  @aagGetHdrID int,  @Status int,  @RCTRXSEQ numeric(19,5),  @TRXSORCE char(13),  @TRXDATE datetime,  @LedgerID INT   SELECT @KPGTRXHS = KPGTRXHS FROM GL40000   IF @KPGTRXHS = 1   BEGIN  INSERT INTO AAG40000 SELECT aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1,   aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID   FROM AAG30000 WHERE YEAR1 = @YEAR1   INSERT INTO AAG40001 SELECT aaGLHdrID,aaGLDistID, INTERID, CorrespondingUnit,   ACTINDX, ACCTTYPE, aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT,   ORDBTAMT,ORCRDAMT,CURNCYID,CURRNIDX, RATETPID,EXGTBLID,  XCHGRATE,EXCHDATE,TIME1,RTCLCMTD, DENXRATE,MCTRXSTT, SEQNUMBR,  aaCustID,aaVendID,aaSiteID,aaItemID, EMPLOYID,aaAssetID,aaBookID,aaCopyStatus, SOURCDOC, aaChangeDate,aaChangeTime,AA_CL_Status,getutcdate()  FROM AAG30001 WHERE exists(SELECT 1 FROM AAG30000   WHERE AAG30000.aaGLHdrID = AAG30001.aaGLHdrID and YEAR1 = @YEAR1)   INSERT INTO AAG40002 SELECT aaGLHdrID,aaGLDistID,aaGLAssignID, DEBITAMT,CRDTAMNT,  ORDBTAMT,ORCRDAMT,aaAssignedPercent, DistRef,NOTEINDX,getutcdate()  FROM AAG30002 WHERE exists(SELECT 1 FROM AAG30000   WHERE AAG30000.aaGLHdrID = AAG30002.aaGLHdrID and YEAR1 = @YEAR1)   INSERT INTO AAG40003 SELECT aaGLHdrID, aaGLDistID, aaGLAssignID, aaTrxDimID, aaTrxCodeID,getutcdate()  FROM AAG30003 WHERE exists(SELECT 1 FROM AAG30000   WHERE AAG30000.aaGLHdrID = AAG30003.aaGLHdrID and YEAR1 = @YEAR1)  END   DELETE AAG30003 WHERE exists(SELECT 1 FROM AAG30000   WHERE AAG30000.aaGLHdrID = AAG30003.aaGLHdrID and YEAR1 = @YEAR1)  DELETE AAG30002 WHERE exists(SELECT 1 FROM AAG30000   WHERE AAG30000.aaGLHdrID = AAG30002.aaGLHdrID and YEAR1 = @YEAR1)  DELETE AAG30001 WHERE exists(SELECT 1 FROM AAG30000   WHERE AAG30000.aaGLHdrID = AAG30001.aaGLHdrID and YEAR1 = @YEAR1)  DELETE AAG30000 WHERE YEAR1 = @YEAR1   if @I_CreateDefaultAARecForBBFJrnl = 1  begin  select  @CMPANYID = CMPANYID, @cDBName = INTERID from DYNAMICS.dbo.SY01500 where INTERID = DB_NAME()   select TOP 1 @l_nIsNextYearClose = HISTORYR, @l_nNextYear = YEAR1 from SY40101   where YEAR1 > @YEAR1  order by YEAR1 asc   exec    @l_nStatus = DYNAMICS.dbo.smGetMsgString 12125, @cDBName, @l_cPROFIT_AND_LOSS output, @O_nSQL_Error_State output  select @l_nError = @@error  if @l_nStatus = 0 and @l_nError <> 0  select @l_nStatus = @l_nError   if ( (@l_nStatus <> 0) or (@O_nSQL_Error_State <> 0) )  return (@l_nStatus)   exec    @l_nStatus = DYNAMICS.dbo.smGetMsgString 12030, @cDBName, @l_cBBF output, @O_nSQL_Error_State output  select @l_nError = @@error  if @l_nStatus = 0 and @l_nError <> 0  select @l_nStatus = @l_nError   if ( (@l_nStatus <> 0) or (@O_nSQL_Error_State <> 0) )  return (@l_nStatus)  if not exists(select top 1 1 from AAG30001 dist Inner join AAG30000 hdr on dist.aaGLHdrID = hdr.aaGLHdrID   where (SOURCDOC = @l_cPROFIT_AND_LOSS or SOURCDOC = @l_cBBF) and   YEAR1 = @l_nNextYear AND  SEQNUMBR = 0)  begin  if @l_nIsNextYearClose = 0  begin  declare CGLOPEN cursor fast_forward for   select JRNENTRY, RCTRXSEQ, OPENYEAR, TRXSORCE, TRXDATE, Ledger_ID  from GL20000   where (SOURCDOC = @l_cPROFIT_AND_LOSS or SOURCDOC = @l_cBBF) and   OPENYEAR = @l_nNextYear   group by OPENYEAR,JRNENTRY,RCTRXSEQ,TRXSORCE,TRXDATE, Ledger_ID   end  else  begin  declare CGLOPEN cursor fast_forward for   select JRNENTRY, RCTRXSEQ, HSTYEAR, TRXSORCE, TRXDATE, Ledger_ID  from GL30000   where (SOURCDOC = @l_cPROFIT_AND_LOSS or SOURCDOC = @l_cBBF) and   HSTYEAR = @l_nNextYear  group by HSTYEAR,JRNENTRY,RCTRXSEQ,TRXSORCE,TRXDATE, Ledger_ID  end   open CGLOPEN   fetch next from CGLOPEN into @JRNENTRY,@RCTRXSEQ,@l_nNextYear,@TRXSORCE,@TRXDATE,@LedgerID  while @@fetch_status =0  BEGIN  IF NOT EXISTS(SELECT 1 FROM AAG30000 WHERE JRNENTRY = @JRNENTRY AND   RCTRXSEQ = @RCTRXSEQ AND   YEAR1 = @l_nNextYear AND   aaGLTRXSource = @TRXSORCE)  BEGIN  exec DYNAMICS..aagGetNextID 30000, @CMPANYID, @aagGetHdrID out, @Status   insert into AAG30000  (aaGLHdrID,JRNENTRY,RCTRXSEQ,YEAR1,aaTRXType,aaGLTRXSource,aaTRXSource,GLPOSTDT,Ledger_ID)  values(@aagGetHdrID,@JRNENTRY,@RCTRXSEQ,@l_nNextYear,1,@TRXSORCE,' ',@TRXDATE,@LedgerID)    if @l_nIsNextYearClose = 0  begin  insert into AAG30001   (aaGLHdrID,  aaGLDistID, INTERID , CorrespondingUnit, ACTINDX, ACCTTYPE ,  aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT,  CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1,  RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, SOURCDOC,  aaCustID, aaVendID, aaSiteID, aaItemID, aaCopyStatus,aaChangeDate, aaChangeTime)  select @aagGetHdrID,  DEX_ROW_ID,  DB_NAME() ,CorrespondingUnit,ACTINDX, dbo.aagGetAccountType(ACTINDX),  0,2,  DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT,  CURNCYID, CURRNIDX, RATETPID,  EXGTBLID, XCHGRATE, EXCHDATE,TIME1,  RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR,SOURCDOC,'',  '', '', '', 8,convert(char(12), getdate(), 102), convert(char(12), getdate(), 108)  from GL20000   where JRNENTRY = @JRNENTRY and RCTRXSEQ = @RCTRXSEQ and OPENYEAR = @l_nNextYear and TRXSORCE = @TRXSORCE and TRXDATE = @TRXDATE and Ledger_ID = @LedgerID   Update AAG30001 SET aaGLDistID=0-aaGLDistID where  aaGLHdrID = @aagGetHdrID  UPDATE AAG30001   SET aaGLDistID = (SELECT COUNT(1) FROM AAG30001 AA WHERE AAG30001.DEX_ROW_ID >= AA.DEX_ROW_ID AND AA.aaGLHdrID = AAG30001.aaGLHdrID)   where AAG30001.aaGLHdrID = @aagGetHdrID   insert into AAG30002  (aaGLHdrID,aaGLDistID,aaGLAssignID,DEBITAMT,CRDTAMNT,ORDBTAMT,ORCRDAMT,aaAssignedPercent,  DistRef,NOTEINDX)  select aaGLHdrID,aaGLDistID,1,DEBITAMT,CRDTAMNT,ORDBTAMT,ORCRDAMT,10000,  ' ',0 from AAG30001   where AAG30001.aaGLHdrID = @aagGetHdrID  end  else  begin  insert into AAG30001   (aaGLHdrID,  aaGLDistID, INTERID , CorrespondingUnit, ACTINDX, ACCTTYPE ,  aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT,  CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1,  RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, SOURCDOC,  aaCustID, aaVendID, aaSiteID, aaItemID, aaCopyStatus,aaChangeDate, aaChangeTime)  select @aagGetHdrID,  DEX_ROW_ID,  DB_NAME() ,CorrespondingUnit,ACTINDX, dbo.aagGetAccountType(ACTINDX),  0,2,  DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT,  CURNCYID, CURRNIDX, RATETPID,  EXGTBLID, XCHGRATE, EXCHDATE,TIME1,  RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR,SOURCDOC,'',  '', '', '', 8,convert(char(12), getdate(), 102), convert(char(12), getdate(), 108)  from GL30000   where JRNENTRY = @JRNENTRY and RCTRXSEQ = @RCTRXSEQ and HSTYEAR = @l_nNextYear and TRXSORCE = @TRXSORCE and TRXDATE = @TRXDATE and Ledger_ID = @LedgerID   Update AAG30001 SET aaGLDistID=0-aaGLDistID where  aaGLHdrID = @aagGetHdrID  UPDATE AAG30001   SET aaGLDistID = (SELECT COUNT(1) FROM AAG30001 AA WHERE AAG30001.DEX_ROW_ID >= AA.DEX_ROW_ID AND AA.aaGLHdrID = AAG30001.aaGLHdrID)   where AAG30001.aaGLHdrID = @aagGetHdrID   insert into AAG30002  (aaGLHdrID,aaGLDistID,aaGLAssignID,DEBITAMT,CRDTAMNT,ORDBTAMT,ORCRDAMT,aaAssignedPercent,  DistRef,NOTEINDX)  select aaGLHdrID,aaGLDistID,1,DEBITAMT,CRDTAMNT,ORDBTAMT,ORCRDAMT,10000,  ' ',0 from AAG30001   where AAG30001.aaGLHdrID = @aagGetHdrID  end  END  fetch next from CGLOPEN into @JRNENTRY,@RCTRXSEQ,@l_nNextYear,@TRXSORCE,@TRXDATE,@LedgerID  END  CLOSE CGLOPEN  DEALLOCATE CGLOPEN  end  end  SET NOCOUNT OFF END    
GO
GRANT EXECUTE ON  [dbo].[aaMoveGLtoHist] TO [DYNGRP]
GO
