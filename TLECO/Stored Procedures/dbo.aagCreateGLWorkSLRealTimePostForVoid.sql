SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE    procedure [dbo].[aagCreateGLWorkSLRealTimePostForVoid] @I_nCompanyID smallint, @I_nJRNENTRY int, @O_fValidCode tinyint = 1 output  As  begin  declare  @dtGLPostingDate datetime,  @Series smallint,  @OrigDTASeries smallint,  @HdrRecCreated tinyint,  @DTAControlNum char(21),  @DTATRXType smallint,  @CURNCYID char(15),  @ORDOCNUM char(21),  @ORCTRNUM char(21),  @ORTRXTYP smallint,  @OrigSeqNum int,  @aaSubLedgerHdrID int,  @fSuccess tinyint,  @nGLWorkHdrID int,  @INTERID char(5),  @CorrespondingUnit char(5),  @ACTINDX int,  @ACCTTYPE smallint,  @DECPLACS smallint,  @FXDORVAR smallint,  @DEBITAMT numeric(19,5),  @CRDTAMNT numeric(19,5),  @ORDBTAMT numeric(19,5),  @ORCRDAMT numeric(19,5),  @CURRNIDX smallint,  @SQNCLINE numeric(19,5),  @nDistID int,  @nStatus smallint   IF NOT EXISTS (SELECT TOP 1 1 FROM AAG10000 where JRNENTRY = @I_nJRNENTRY)   BEGIN  set @nDistID = 0  set @HdrRecCreated = 0  select @Series = SERIES, @OrigDTASeries = OrigDTASeries, @dtGLPostingDate = TRXDATE from GL10000 where JRNENTRY = @I_nJRNENTRY   declare glWorkLineVoid cursor fast_forward for  select ORDOCNUM, ORTRXTYP, OrigSeqNum, ORCTRNUM, INTERID,  CorrespondingUnit, ACTINDX, ACCTTYPE,DECPLACS, FXDORVAR, DEBITAMT,  CRDTAMNT, ORDBTAMT, ORCRDAMT, CURRNIDX, SQNCLINE  from GL10001 where JRNENTRY = @I_nJRNENTRY order by SQNCLINE  open glWorkLineVoid  fetch next from glWorkLineVoid into @ORDOCNUM, @ORTRXTYP,@OrigSeqNum,@ORCTRNUM,@INTERID,  @CorrespondingUnit, @ACTINDX, @ACCTTYPE,@DECPLACS, @FXDORVAR,@DEBITAMT,  @CRDTAMNT, @ORDBTAMT, @ORCRDAMT, @CURRNIDX, @SQNCLINE  while @@fetch_status = 0  begin   if @HdrRecCreated = 0  begin  set @nGLWorkHdrID = 0  exec  DYNAMICS.dbo.aagGetNextID   10000,  @I_nCompanyID,  @nGLWorkHdrID out,  @nStatus out   insert into AAG10000(aaGLWorkHdrID,JRNENTRY,RCTRXSEQ,GLPOSTDT,aaTRXType,Ledger_ID)  values (@nGLWorkHdrID, @I_nJRNENTRY,0,@dtGLPostingDate,1,1)   if @@ERROR <> 0 print 'dd'  print @@ERROR  set @HdrRecCreated = 1  end  set @nDistID = @nDistID + 1  if @ORDOCNUM <> ''  begin    if @Series = 4 and @OrigDTASeries <> 12  begin  if @ORTRXTYP < 6  set @ORTRXTYP = 0  else  set @ORTRXTYP = 1   select @aaSubLedgerHdrID = aaSubLedgerHdrID from AAG20000  where DOCNUMBR = @ORCTRNUM and DOCTYPE = @ORTRXTYP   end  else  select @aaSubLedgerHdrID = aaSubLedgerHdrID from AAG20000  where DOCNUMBR = @ORDOCNUM and DOCTYPE = @ORTRXTYP    exec aagCopyToGLWorkFromSubLedgerForVoid  @aaSubLedgerHdrID,  @OrigSeqNum ,  @nGLWorkHdrID,  @nDistID,  @I_nJRNENTRY,  @dtGLPostingDate,  @SQNCLINE,  @fSuccess output   end  else   begin   insert AAG10001(aaGLWorkHdrID, aaGLWorkDistID, INTERID, CorrespondingUnit, ACTINDX,  ACCTTYPE, aaBrowseType, DECPLACS, FXDORVAR, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT,  CURNCYID, CURRNIDX, SQNCLINE)  values(@nGLWorkHdrID, @nDistID,@INTERID, @CorrespondingUnit, @ACTINDX,  @ACCTTYPE, 0, @DECPLACS, @FXDORVAR, @CRDTAMNT, @DEBITAMT, @ORCRDAMT, @ORDBTAMT,   isnull(@CURNCYID,0), @CURRNIDX, @SQNCLINE)   insert AAG10002(aaGLWorkHdrID, aaGLWorkDistID, aaGLWorkAssignID, aaAssignedPercent,  DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT)  values(@nGLWorkHdrID, @nDistID,1,10000,   @CRDTAMNT, @DEBITAMT, @ORCRDAMT, @ORDBTAMT)  end  fetch next from glWorkLineVoid into @ORDOCNUM, @ORTRXTYP,@OrigSeqNum,@ORCTRNUM,@INTERID,  @CorrespondingUnit, @ACTINDX, @ACCTTYPE,@DECPLACS, @FXDORVAR,@DEBITAMT,  @CRDTAMNT, @ORDBTAMT, @ORCRDAMT, @CURRNIDX, @SQNCLINE  end  close glWorkLineVoid  deallocate glWorkLineVoid  END  return end    
GO
GRANT EXECUTE ON  [dbo].[aagCreateGLWorkSLRealTimePostForVoid] TO [DYNGRP]
GO