SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aagAlertUserIfPartialAssignment]  @I_cTableAssign nvarchar(30) = null, @I_cTableCode nvarchar(30) = null, @I_cTableError nvarchar(30) = null, @I_nHdrID int, @O_fSuccess tinyint = 1 output as begin  declare  @nAssignID    int,  @cTrxDim    char(15),  @cTrxDimCode   char(30),  @cRelTrxDim   char(15),  @cRelTrxDimCode  char(30),  @nErrorNum       int,  @nAssignDebitAmt  numeric(19,5),  @nAssignCreditAmt  numeric(19,5),  @nTotAssignDebitAmt numeric(19,5),  @nTotAssignCreditAmt numeric(19,5),  @fValidCodeSetting  tinyint,  @fValidCodeComb  tinyint,  @DisplayDistID int,  @IsFullAssignment int,  @I_nDistID int,  @nDebitAmt numeric(19,5),  @nCreditAmt numeric(19,5),  @nActIndx int,  @nAcctClassID int,  @nErrorCount int,  @fValidCode tinyint,  @I_nDistDebitAmt numeric(19,5),  @I_nDistCreditAmt numeric(19,5),  @SERIES  int  set @nAssignDebitAmt = 0  set @nAssignCreditAmt = 0  set @nTotAssignDebitAmt = 0  set @nTotAssignCreditAmt = 0  set @I_nDistDebitAmt=0  set @I_nDistCreditAmt=0  set @O_fSuccess = 1   set @SERIES = 0  select @SERIES  = SERIES from AAG20000 where aaSubLedgerHdrID = @I_nHdrID  if @SERIES = 2   begin  if exists(Select aaSubLedgerDistID from AAG20001 where aaSubLedgerHdrID = @I_nHdrID  and aaSubLedgerDistID = 1 and POSTED = 1)   begin  declare aaSubLedHdr cursor fast_forward FOR  select aaSubLedgerDistID,DEBITAMT,CRDTAMNT,ACTINDX from AAG20001  where aaSubLedgerHdrID = @I_nHdrID and POSTED = 0 and aaBrowseType <> 0  end  else  begin  declare aaSubLedHdr cursor fast_forward FOR  select aaSubLedgerDistID,DEBITAMT,CRDTAMNT,ACTINDX from AAG20001  where aaSubLedgerHdrID = @I_nHdrID and POSTED = 0  end  end  else  begin  declare aaSubLedHdr cursor fast_forward FOR  select aaSubLedgerDistID,DEBITAMT,CRDTAMNT,ACTINDX from AAG20001  where aaSubLedgerHdrID = @I_nHdrID and POSTED = 0  end  open aaSubLedHdr  fetch next from aaSubLedHdr into @I_nDistID,@nDebitAmt,@nCreditAmt,@nActIndx  while @@fetch_status = 0  begin   If (Select SERIES from AAG20000 Where aaSubLedgerHdrID = @I_nHdrID) = 5   and (Select TRXQTY from AAG20001 Where aaSubLedgerHdrID = @I_nHdrID and aaSubLedgerDistID = @I_nDistID) = 0   Return    exec ('declare aaSubLedDist cursor fast_forward FOR select aaSubLedgerAssignID,DEBITAMT,CRDTAMNT  from ' + @I_cTableAssign + ' where aaSubLedgerHdrID = ' + @I_nHdrID +  ' and aaSubLedgerDistID =' + @I_nDistID)  open aaSubLedDist  fetch next from aaSubLedDist into @nAssignID,@nAssignDebitAmt,@nAssignCreditAmt  WHILE @@fetch_status = 0  begin  set @nTotAssignDebitAmt = @nTotAssignDebitAmt + @nAssignDebitAmt  set @nTotAssignCreditAmt = @nTotAssignCreditAmt + @nAssignCreditAmt  fetch next from aaSubLedDist into @nAssignID,@nAssignDebitAmt,@nAssignCreditAmt  end  close aaSubLedDist  deallocate aaSubLedDist   if (@nTotAssignDebitAmt <> @I_nDistDebitAmt or @nTotAssignCreditAmt <> @I_nDistCreditAmt)  begin   if (select aaIsOptionSet from AAG00700 where aaOption=12)=1   set @O_fSuccess = 0  end   return  Fetch next from aaSubLedHdr into @I_nDistID,@nDebitAmt,@nCreditAmt, @nActIndx  end end    
GO
GRANT EXECUTE ON  [dbo].[aagAlertUserIfPartialAssignment] TO [DYNGRP]
GO