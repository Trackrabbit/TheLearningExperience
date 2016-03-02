SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create         procedure [dbo].[aagGLWorkRecurringBatch] @JRNENTRY    int, @RCTRXSEQ numeric(19,5), @GLPOSTDT datetime, @HdrID int output , @CopmpanyID smallint, @LedgerID smallint  as begin  set nocount on  declare @aaGLHdrID int,  @aaGLDistID int,  @aaGLAssignID  int,  @aaTrxDimID int,  @aaTrxCodeID int,  @aaAcctClassID int,  @aaGLTRXSource  char(13),   @lActIndx       int    Select  @aaGLHdrID  =0,  @aaGLDistID =0,  @aaGLAssignID  =0,  @aaTrxDimID =0,  @aaTrxCodeID =0,  @aaAcctClassID  =0   exec aagGLWorkHdrUpdate  @JRNENTRY,@RCTRXSEQ, @GLPOSTDT, @LedgerID, @HdrID output, @CopmpanyID output   Select @aaGLHdrID = aaGLHdrID, @aaGLTRXSource = aaGLTRXSource from AAG30000 where JRNENTRY =  @JRNENTRY  and RCTRXSEQ = @RCTRXSEQ  if left(@aaGLTRXSource,5) = 'GLREV'   Select @aaGLHdrID = aaGLHdrID from AAG30000 where JRNENTRY =  @JRNENTRY  and aaGLTRXSource = REPLACE(@aaGLTRXSource,'GLREV','GLTRX')    Insert into AAG10001  (aaGLWorkHdrID, aaGLWorkDistID, INTERID,CorrespondingUnit,ACTINDX,ACCTTYPE,aaBrowseType,  DECPLACS,FXDORVAR,DEBITAMT,CRDTAMNT,ORDBTAMT,ORCRDAMT,CURNCYID,CURRNIDX,  RATETPID,EXGTBLID,XCHGRATE,EXCHDATE,TIME1,RTCLCMTD,DENXRATE,MCTRXSTT,SQNCLINE,  aaCustID,aaVendID,aaSiteID,aaItemID,EMPLOYID,aaCopyStatus,aaWinWasOpen,aaDistErrors,aaChangeDate, aaChangeTime)  Select @HdrID, aaGLDistID, INTERID,CorrespondingUnit,ACTINDX,ACCTTYPE,aaBrowseType,  DECPLACS,dbo.aagFixedOrVar(ACTINDX),DEBITAMT,CRDTAMNT,ORDBTAMT,ORCRDAMT,CURNCYID,CURRNIDX,  RATETPID,EXGTBLID,XCHGRATE,EXCHDATE,TIME1,RTCLCMTD,DENXRATE,MCTRXSTT,SEQNUMBR,  aaCustID,aaVendID,aaSiteID,aaItemID,EMPLOYID,aaCopyStatus,0,0,convert(char(12), getdate(), 102), convert(char(12), getdate(), 108)  from AAG30001  where aaGLHdrID = @aaGLHdrID and aaGLDistID > 0   Insert into AAG10002  (aaGLWorkHdrID, aaGLWorkDistID, aaGLWorkAssignID, DEBITAMT, CRDTAMNT, ORDBTAMT,  ORCRDAMT, aaAssignedPercent, DistRef, NOTEINDX, aaAssignErrors, aaAliasID)  Select @HdrID, aaGLDistID, aaGLAssignID, DEBITAMT, CRDTAMNT, ORDBTAMT,  ORCRDAMT, aaAssignedPercent, DistRef, NOTEINDX, 1, aaAliasID  from AAG30002  where aaGLHdrID = @aaGLHdrID and aaGLDistID > 0  and aaGLAssignID >0   declare CCode cursor fast_forward for   Select aaGLDistID, aaGLAssignID  from AAG30002   where aaGLHdrID = @aaGLHdrID and aaGLDistID > 0  and aaGLAssignID >0   open CCode   fetch next from CCode into @aaGLDistID, @aaGLAssignID  while @@fetch_status = 0  begin   Select @aaAcctClassID = aaAcctClassID from AAG00200  where ACTINDX in (select ACTINDX from AAG30001   where aaGLHdrID = @aaGLHdrID and aaGLDistID = @aaGLDistID)   Insert into AAG10003  (aaGLWorkHdrID, aaGLWorkDistID, aaGLWorkAssignID, aaTrxDimID, aaTrxCodeID, aaCodeErrors)  Select @HdrID,@aaGLDistID, @aaGLAssignID, aaTrxDimID, 0, 0 from AAG00202  where aaAcctClassID = @aaAcctClassID and aaTrxDimID >=0    declare CCodeTrx cursor fast_forward for  select aaTrxDimID, aaTrxCodeID from AAG30003   where aaGLHdrID = @aaGLHdrID and   aaGLDistID = @aaGLDistID and  aaGLAssignID = @aaGLAssignID  open CCodeTrx  fetch next from CCodeTrx into @aaTrxDimID,@aaTrxCodeID  while @@fetch_status = 0  begin   update AAG10003 set aaTrxCodeID = @aaTrxCodeID  where aaGLWorkHdrID = @HdrID and  aaGLWorkDistID = @aaGLDistID and   aaGLWorkAssignID = @aaGLAssignID and   aaTrxDimID = @aaTrxDimID   fetch next from CCodeTrx into @aaTrxDimID,@aaTrxCodeID  end   close CCodeTrx  deallocate CCodeTrx  if left(@aaGLTRXSource,5) = 'GLREV'  begin  Update AAG10001 SET aaGLWorkDistID=0-aaGLWorkDistID where aaGLWorkHdrID=@HdrID  Update AAG10002 SET aaGLWorkDistID=0-aaGLWorkDistID where aaGLWorkHdrID=@HdrID  Update AAG10003 SET aaGLWorkDistID=0-aaGLWorkDistID where aaGLWorkHdrID=@HdrID  UPDATE AAG10002  SET aaGLWorkDistID = (  SELECT COUNT(1) FROM AAG10001 AA WHERE A1.DEX_ROW_ID >= AA.DEX_ROW_ID and AA.aaGLWorkHdrID = A1.aaGLWorkHdrID)  from AAG10001 A1 where AAG10002.aaGLWorkHdrID=A1.aaGLWorkHdrID and AAG10002.aaGLWorkDistID=A1.aaGLWorkDistID and A1.aaGLWorkHdrID=@HdrID  UPDATE AAG10003  SET aaGLWorkDistID = (SELECT COUNT(1) FROM AAG10001 AA WHERE A1.DEX_ROW_ID >= AA.DEX_ROW_ID and AA.aaGLWorkHdrID = A1.aaGLWorkHdrID)  from AAG10001 A1 where AAG10003.aaGLWorkHdrID=A1.aaGLWorkHdrID and AAG10003.aaGLWorkDistID=A1.aaGLWorkDistID and A1.aaGLWorkHdrID=@HdrID  UPDATE AAG10001  SET aaGLWorkDistID =  (SELECT COUNT(1) FROM AAG10001 AA WHERE AAG10001.DEX_ROW_ID >= AA.DEX_ROW_ID and AA.aaGLWorkHdrID = AAG10001.aaGLWorkHdrID )  where AAG10001.aaGLWorkHdrID=@HdrID  end   fetch next from CCode into @aaGLDistID, @aaGLAssignID  end   close CCode  deallocate CCode   declare UpdateBrowseType cursor fast_forward for   select a.aaGLWorkDistID,   a.ACTINDX,   b.aaAcctClassID   from   AAG10001 a   inner join AAG00200 b   on a.ACTINDX = b.ACTINDX   where  aaGLWorkHdrID = @HdrID    open UpdateBrowseType   fetch next from UpdateBrowseType into @aaGLDistID, @lActIndx, @aaAcctClassID   while @@FETCH_STATUS = 0   begin   if exists (select Top 1 aaTrxCodeID from AAG10001 a   inner join AAG10003 d on a.aaGLWorkDistID = d.aaGLWorkDistID   inner join AAG00202 c on d.aaTrxDimID = c.aaTrxDimID and c.aaAcctClassID = @aaAcctClassID   where  a.ACTINDX = @lActIndx and ( ( aaDataEntry = 2 and aaTrxCodeID = 0 ) or   ( aaDataEntry = 4 and ( aaTrxCodeID = 0 or aaTrxCodeID <> aaTrxDimCodeIDDflt ) ) ) )   or exists (select 1 from AAG10003 a   inner join AAG00401 b on a.aaTrxCodeID = b.aaTrxDimCodeID   where  a.aaGLWorkHdrID = @HdrID and a.aaGLWorkDistID = @aaGLDistID and b.INACTIVE > 0)   update AAG10001 set aaBrowseType = 2 where aaGLWorkHdrID = @HdrID and aaGLWorkDistID = @aaGLDistID   fetch next from UpdateBrowseType into @aaGLDistID, @lActIndx,   @aaAcctClassID   end   close UpdateBrowseType   deallocate UpdateBrowseType    set nocount off end    
GO
GRANT EXECUTE ON  [dbo].[aagGLWorkRecurringBatch] TO [DYNGRP]
GO
