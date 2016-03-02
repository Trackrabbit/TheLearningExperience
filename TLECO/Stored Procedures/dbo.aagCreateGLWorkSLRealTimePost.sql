SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagCreateGLWorkSLRealTimePost]  @I_nCompanyID smallint,  @I_nJRNENTRY  int,  @O_fValidCode tinyint = 1 output as begin  declare @dtGLPostingDate datetime,  @Series smallint,  @OrigDTASeries smallint,  @HdrRecCreated tinyint,  @DTAControlNum char(21),  @CURNCYID char(15),  @ORDOCNUM char(21),  @ORCTRNUM char(21),  @ORTRXTYP smallint,  @OrigSeqNum int,  @aaSubLedgerHdrID int,  @fSuccess tinyint,  @nGLWorkHdrID int,  @INTERID char(5),  @CorrespondingUnit char(5),  @ACTINDX int,  @ACCTTYPE smallint,  @DECPLACS smallint,  @FXDORVAR smallint,  @DEBITAMT numeric(19,5),  @CRDTAMNT numeric(19,5),  @ORDBTAMT numeric(19,5),  @ORCRDAMT numeric(19,5),  @CURRNIDX smallint,  @SQNCLINE numeric(19,5),  @nDistID int,  @nStatus smallint,  @DTATrxType smallint,  @BACHNUMB char(15),  @aaSubLedgerHdrIDtemp int,  @nDistIDtemp int,  @REF char(50)   set @aaSubLedgerHdrIDtemp = 0   set @nDistIDtemp = 0   set @aaSubLedgerHdrID = 0   set @nDistID = 0   set @HdrRecCreated = 0   select @Series = SERIES,   @OrigDTASeries = OrigDTASeries,   @DTATrxType = DTATRXType,   @dtGLPostingDate = TRXDATE,   @BACHNUMB = BACHNUMB,   @REF = REFRENCE   from GL10000   where JRNENTRY = @I_nJRNENTRY   if exists (select 1   from sysobjects   where name = 'WO010032'   and xtype = 'U')  begin  if exists(select 1   from WO010032   where 'MO-' + ltrim(MANUFACTUREORDER_I) = @REF)  begin  return   end  end   declare glWorkLine cursor fast_forward for  select ORDOCNUM,   ORTRXTYP,   OrigSeqNum,   ORCTRNUM,  INTERID,  CorrespondingUnit,   ACTINDX,   ACCTTYPE,  DECPLACS,   FXDORVAR,   DEBITAMT,  CRDTAMNT,   ORDBTAMT,   ORCRDAMT,   CURRNIDX,   SQNCLINE  from GL10001   where JRNENTRY = @I_nJRNENTRY and  BACHNUMB not like 'FA%'   order by SQNCLINE   open glWorkLine   fetch next from glWorkLine   into @ORDOCNUM,   @ORTRXTYP,  @OrigSeqNum,  @ORCTRNUM,  @INTERID,  @CorrespondingUnit,   @ACTINDX,   @ACCTTYPE,  @DECPLACS,   @FXDORVAR,  @DEBITAMT,  @CRDTAMNT,   @ORDBTAMT,   @ORCRDAMT,   @CURRNIDX,   @SQNCLINE   while @@fetch_status = 0  begin  if @Series = 2   and @DTATrxType = 3  SET @ORDOCNUM = @ORCTRNUM   if @HdrRecCreated = 0  begin  set @nGLWorkHdrID = 0   select @nGLWorkHdrID = aaGLWorkHdrID   from AAG10000   where JRNENTRY = @I_nJRNENTRY   if @nGLWorkHdrID is null   or @nGLWorkHdrID = 0  begin  exec  DYNAMICS.dbo.aagGetNextID   10000,  @I_nCompanyID,  @nGLWorkHdrID out,  @nStatus out    insert into AAG10000  (aaGLWorkHdrID,  JRNENTRY,  RCTRXSEQ,  GLPOSTDT,  aaTRXType,  Ledger_ID)  values  (@nGLWorkHdrID, @I_nJRNENTRY,0,@dtGLPostingDate,1,1)    if @@ERROR <> 0   print 'dd'   print @@ERROR   set @HdrRecCreated = 1  end  end   set @nDistID = @nDistID + 1   if @ORDOCNUM <> ''  begin   if @Series = 4   and @BACHNUMB not like 'PM%'   and @OrigDTASeries=0   and @BACHNUMB not like 'CB%'   and @BACHNUMB not like 'BM%'  set @OrigDTASeries = 12  else   if @Series = 3   and @BACHNUMB not like 'RM%'   and @OrigDTASeries = 0   and @BACHNUMB not like 'CB%'   and @BACHNUMB not like 'BM%'  set @OrigDTASeries = 11  else   if @OrigDTASeries=0  set @OrigDTASeries = @Series   if @Series = 4   and @OrigDTASeries <> 12  begin  if @ORTRXTYP < 6  set @ORTRXTYP = 0  else  set @ORTRXTYP = 1   select @aaSubLedgerHdrID = aaSubLedgerHdrID   from   AAG20000  where  SERIES = @OrigDTASeries   and DOCNUMBR = @ORCTRNUM   and DOCTYPE = @ORTRXTYP   end  else  select @aaSubLedgerHdrID = aaSubLedgerHdrID   from AAG20000  where SERIES = @OrigDTASeries   and DOCNUMBR = @ORDOCNUM   and DOCTYPE = @ORTRXTYP    if @OrigDTASeries=5   and @aaSubLedgerHdrIDtemp <> @aaSubLedgerHdrID  Begin  set @aaSubLedgerHdrIDtemp=@aaSubLedgerHdrID   set @nDistIDtemp = 1   while exists(select 1 from AAG20001 where aaSubLedgerHdrID = @aaSubLedgerHdrID and aaSubLedgerDistID = @nDistIDtemp and DEBITAMT = 0 and CRDTAMNT = 0 and ORDBTAMT = 0 and ORCRDAMT = 0)  and exists(select 1 from AAG20001 where aaSubLedgerHdrID = @aaSubLedgerHdrID and aaSubLedgerDistID = (@nDistIDtemp+1) and DEBITAMT = 0 and CRDTAMNT = 0 and ORDBTAMT = 0 and ORCRDAMT = 0)  begin  set @nDistIDtemp = @nDistIDtemp + 2  end   set @OrigSeqNum=@nDistIDtemp  end  else   if @OrigDTASeries=5   Begin  set @nDistIDtemp = @nDistIDtemp + 1  while exists(select 1 from AAG20001 where aaSubLedgerHdrID = @aaSubLedgerHdrID and aaSubLedgerDistID = @nDistIDtemp and DEBITAMT = 0 and CRDTAMNT = 0 and ORDBTAMT = 0 and ORCRDAMT = 0)  and exists(select 1 from AAG20001 where aaSubLedgerHdrID = @aaSubLedgerHdrID and aaSubLedgerDistID = (@nDistIDtemp+1) and DEBITAMT = 0 and CRDTAMNT = 0 and ORDBTAMT = 0 and ORCRDAMT = 0)  begin  set @nDistIDtemp = @nDistIDtemp + 2  end   set @OrigSeqNum=@nDistIDtemp  end   exec aagCopyToGLWorkFromSubLedger  @aaSubLedgerHdrID,  @OrigSeqNum,  @nGLWorkHdrID,  @nDistID,  @I_nJRNENTRY,  @dtGLPostingDate,  @SQNCLINE,  @fSuccess output  end  else  begin  if exists(select 1 from AAG10001 where aaGLWorkHdrID = @nGLWorkHdrID and aaGLWorkDistID = @nDistID)  begin  update AAG10001 set DEBITAMT = @DEBITAMT, CRDTAMNT = @CRDTAMNT, ORDBTAMT = @ORDBTAMT, ORCRDAMT = @ORCRDAMT  where aaGLWorkHdrID = @nGLWorkHdrID and aaGLWorkDistID = @nDistID  end  else  begin  insert AAG10001  (aaGLWorkHdrID,   aaGLWorkDistID,   INTERID,   CorrespondingUnit,   ACTINDX,  ACCTTYPE,   aaBrowseType,   DECPLACS,   FXDORVAR,   DEBITAMT,   CRDTAMNT,   ORDBTAMT,   ORCRDAMT,  CURNCYID,   CURRNIDX,   SQNCLINE,  AA_CL_Status)  values(@nGLWorkHdrID, @nDistID,@INTERID, @CorrespondingUnit, @ACTINDX,@ACCTTYPE, 0, @DECPLACS, @FXDORVAR, @DEBITAMT, @CRDTAMNT, @ORDBTAMT, @ORCRDAMT,isnull(@CURNCYID,0), @CURRNIDX, @SQNCLINE,0)  end   if exists(select 1 from AAG10002 where aaGLWorkHdrID = @nGLWorkHdrID and aaGLWorkDistID = @nDistID)  begin  update AAG10002 set DEBITAMT = @DEBITAMT, CRDTAMNT = @CRDTAMNT, ORDBTAMT = @ORDBTAMT, ORCRDAMT = @ORCRDAMT  where aaGLWorkHdrID = @nGLWorkHdrID and aaGLWorkDistID = @nDistID  end  else  begin  insert AAG10002  (aaGLWorkHdrID,   aaGLWorkDistID,   aaGLWorkAssignID,   aaAssignedPercent,  DEBITAMT,   CRDTAMNT,   ORDBTAMT,   ORCRDAMT)  values(@nGLWorkHdrID, @nDistID,1,10000,@DEBITAMT, @CRDTAMNT, @ORDBTAMT, @ORCRDAMT)  end  end   fetch next from glWorkLine   into @ORDOCNUM,   @ORTRXTYP,  @OrigSeqNum,  @ORCTRNUM,  @INTERID,  @CorrespondingUnit,   @ACTINDX,   @ACCTTYPE,  @DECPLACS,   @FXDORVAR,  @DEBITAMT,  @CRDTAMNT,   @ORDBTAMT,   @ORCRDAMT,   @CURRNIDX,   @SQNCLINE  end   close glWorkLine   deallocate glWorkLine    exec aagCreateDistfromSOPtoRM   @aaSubLedgerHdrID,   @I_nCompanyID    if @Series = 4 and @OrigDTASeries = 12  exec aagCorrectAADist @I_nJRNENTRY   return end    
GO
GRANT EXECUTE ON  [dbo].[aagCreateGLWorkSLRealTimePost] TO [DYNGRP]
GO
