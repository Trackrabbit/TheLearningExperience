SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE  PROCEDURE [dbo].[aagUPR_CalculateChecks] @I_cUserID varchar(20), @I_CompanyID smallint = NULL, @I_nDECPLfunCUR int = 0, @I_nPERCENT_FACTOR int = 0 AS BEGIN   declare   @InterID char(5),  @EMPLOYID char(15),  @PYRNTYPE smallint,  @PYRLRTYP smallint,  @TRXNUMBER int,  @SEQNUMBR int,  @ACTINDX int,  @DEPRTMNT char(7),  @JOBTITLE char(7),  @PAYROLCD char(7),  @UPRACTYP smallint,  @PYADNMBR int,  @DistID int,  @HdrID int,  @PRTRXSRC int,  @DEBITAMT numeric(19,5),  @CRDTAMNT numeric(19,5),  @srcHdrID int,  @AssignID int,   @aaAssignedPercent numeric(19,5),   @aaAliasID int,   @l_nsplitDEBITAMT numeric(19,5),   @l_nsplitCRDTAMNT numeric(19,5),  @l_nsumDEBITAMT numeric(19,5),   @l_nsumCRDTAMNT numeric(19,5),  @l_nsumAssignPercent numeric(19,5),  @l_nMaxAssingID int   SELECT @InterID = INTERID   FROM DYNAMICS..SY01500   WHERE CMPANYID = @I_CompanyID  declare CalChec cursor fast_forward for  select EMPLOYID, PAYRCORD, PRTRXSRC, aaSubLedgerHdrID,TRXNUMBER  from UPR10203   inner join AAG20000 on(SERIES = 6 and DOCTYPE = 1 and DOCNUMBR = PRTRXSRC and Master_ID = '' AND AAG20000.PYRNTYPE = 0)  where PRTRXSRC <> 0 and   USERID = @I_cUserID  OPEN CalChec  FETCH NEXT FROM CalChec INTO   @EMPLOYID, @PAYROLCD, @PRTRXSRC, @srcHdrID,@TRXNUMBER  WHILE @@fetch_status = 0  BEGIN  select @PYRNTYPE = 0,   @PYRLRTYP = 0,   @SEQNUMBR = 0,   @ACTINDX = 0,   @DEPRTMNT = '',   @JOBTITLE = '',  @UPRACTYP = 0,   @PYADNMBR = 0,  @DEBITAMT = 0,  @CRDTAMNT = 0,  @HdrID = 0,  @DistID = 0   select @PYRNTYPE = PYRNTYPE,   @PYRLRTYP = PYRLRTYP,   @TRXNUMBER = TRXNUMBER,  @SEQNUMBR = SEQNUMBR,   @ACTINDX = ACTINDX,   @DEPRTMNT = DEPRTMNT,   @JOBTITLE = JOBTITLE,  @UPRACTYP = UPRACTYP,   @PYADNMBR = PYADNMBR,  @DEBITAMT = case when AMNTOPST > 0 then abs(AMNTOPST) else 0 end,  @CRDTAMNT = case when AMNTOPST > 0 then 0 else abs(AMNTOPST) end  from UPR10209   where EMPLOYID = @EMPLOYID and   PAYROLCD = @PAYROLCD and  TRXNUMBER = @TRXNUMBER   if @@rowcount >0   begin  exec aagGetDistID_UPR_EditList  @EMPLOYID,  @PYRNTYPE,  @PYRLRTYP,  @TRXNUMBER,  @SEQNUMBR,  @ACTINDX,  @DEPRTMNT,  @JOBTITLE,  @PAYROLCD,  @UPRACTYP,  @PYADNMBR,  @DistID output   select @HdrID = isnull(aaSubLedgerHdrID, 0) from AAG20000  where SERIES = 6 and   DOCTYPE = 2 and  DOCNUMBR = @I_cUserID and  Master_ID = @EMPLOYID and  PYRNTYPE = @PYRNTYPE  if  @HdrID =0   begin  exec DYNAMICS.dbo.aagGetNextID 20000, @I_CompanyID, @HdrID output   insert into AAG20000 (aaSubLedgerHdrID,  SERIES,  DOCTYPE,  DOCNUMBR,  Master_ID,  PYRNTYPE)  select @HdrID,  6,  2,  @I_cUserID,  @EMPLOYID,  @PYRNTYPE  end    insert into AAG20001 (  aaSubLedgerHdrID,  aaSubLedgerDistID,  INTERID,  ACTINDX,  ACCTTYPE,  DEBITAMT,  CRDTAMNT,  SEQNUMBR,  EMPLOYID,  aaWinWasOpen,  PYRLRTYP,  TRXNUMBER,  aaBrowseType)  select @HdrID,  @DistID,  @InterID,  @ACTINDX,  (select ACCTTYPE from GL00100 where ACTINDX = @ACTINDX),  @DEBITAMT,  @CRDTAMNT,  @SEQNUMBR,  @EMPLOYID,  1,  @PYRLRTYP,  @TRXNUMBER,  1   select @l_nsumAssignPercent = 0,  @l_nsumDEBITAMT = @DEBITAMT,  @l_nsumCRDTAMNT = @CRDTAMNT,  @l_nMaxAssingID = 0   declare Assign cursor static for  select aaSubLedgerAssignID, aaAssignedPercent, aaAliasID from AAG20002   where aaSubLedgerHdrID = @srcHdrID  open Assign  fetch next from Assign into @AssignID, @aaAssignedPercent, @aaAliasID  while @@fetch_status = 0  begin  select @l_nsplitDEBITAMT = round((@DEBITAMT * (@aaAssignedPercent/@I_nPERCENT_FACTOR))/@I_nPERCENT_FACTOR, @I_nDECPLfunCUR),  @l_nsplitCRDTAMNT = round((@CRDTAMNT * (@aaAssignedPercent/@I_nPERCENT_FACTOR))/@I_nPERCENT_FACTOR, @I_nDECPLfunCUR)   select @l_nsumDEBITAMT = @l_nsumDEBITAMT - @l_nsplitDEBITAMT,  @l_nsumCRDTAMNT = @l_nsumCRDTAMNT - @l_nsplitCRDTAMNT,   @l_nsumAssignPercent = @l_nsumAssignPercent + @aaAssignedPercent   insert into AAG20002 (aaSubLedgerHdrID,  aaSubLedgerDistID,  aaSubLedgerAssignID,  DEBITAMT,  CRDTAMNT,  aaAssignedPercent,  DistRef,  aaAliasID)  select @HdrID,  @DistID,  aaSubLedgerAssignID,  @l_nsplitDEBITAMT,  @l_nsplitCRDTAMNT,  aaAssignedPercent,  DistRef,  aaAliasID  from AAG20002   where aaSubLedgerHdrID = @srcHdrID and  aaSubLedgerDistID = 1 and   aaSubLedgerAssignID = @AssignID    insert into AAG20003 (aaSubLedgerHdrID,  aaSubLedgerDistID,  aaSubLedgerAssignID,  aaTrxDimID,  aaTrxCodeID)  select @HdrID,  @DistID,  aaSubLedgerAssignID,  aaTrxDimID,  aaTrxCodeID  from AAG20003   where aaSubLedgerHdrID = @srcHdrID and  aaSubLedgerDistID = 1 and   aaSubLedgerAssignID = @AssignID    select @l_nMaxAssingID = @AssignID  fetch next from Assign into @AssignID, @aaAssignedPercent, @aaAliasID  end  close Assign  deallocate Assign   if @l_nsumAssignPercent = 10000 and @l_nMaxAssingID > 0   begin  update AAG20002 set DEBITAMT = DEBITAMT + @l_nsumDEBITAMT,  CRDTAMNT = CRDTAMNT + @l_nsumCRDTAMNT   where aaSubLedgerHdrID = @HdrID and  aaSubLedgerDistID = @DistID and   aaSubLedgerAssignID = @AssignID   end  end  FETCH NEXT FROM CalChec INTO   @EMPLOYID, @PAYROLCD, @PRTRXSRC, @srcHdrID, @TRXNUMBER  END  CLOSE CalChec  DEALLOCATE CalChec END    
GO
GRANT EXECUTE ON  [dbo].[aagUPR_CalculateChecks] TO [DYNGRP]
GO