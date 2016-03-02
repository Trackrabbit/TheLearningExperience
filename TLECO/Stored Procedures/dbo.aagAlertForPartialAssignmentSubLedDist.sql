SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE                                 procedure [dbo].[aagAlertForPartialAssignmentSubLedDist] @I_nValidationLevel smallint =0,  @I_cTableAssign nvarchar(30) = null, @I_cTableCode nvarchar(30) = null, @I_cTableError nvarchar(30) = null, @I_nHdrID int = 0,  @I_nDistID    int = 0, @I_nDistDebitAmt numeric(19,5) = 0, @I_nDistCreditAmt numeric(19,5) = 0, @I_nAcctClassID int = 0, @I_fDocVal tinyint = 1, @O_fSuccess tinyint = 1 output as begin set nocount on  declare  @nAssignID    int,  @cTrxDim    char(15),  @cTrxDimCode   char(30),  @cRelTrxDim   char(15),  @cRelTrxDimCode  char(30),  @nErrorNum       int,  @nAssignDebitAmt  numeric(19,5),  @nAssignCreditAmt  numeric(19,5),  @nTotAssignDebitAmt numeric(19,5),  @nTotAssignCreditAmt numeric(19,5),  @fValidCodeSetting  tinyint,   @fValidCodeComb  tinyint,  @DisplayDistID int,  @IsFullAssignment int  set @nAssignDebitAmt = 0  set @nAssignCreditAmt = 0  set @nTotAssignDebitAmt = 0  set @nTotAssignCreditAmt = 0  set @O_fSuccess = 1   If (Select SERIES from AAG20000 Where aaSubLedgerHdrID = @I_nHdrID) = 5   and (Select TRXQTY from AAG20001 Where aaSubLedgerHdrID = @I_nHdrID and aaSubLedgerDistID = @I_nDistID) = 0   Return   exec ('delete from ' + @I_cTableError + ' where aaSubLedgerHdrID = ' + @I_nHdrID +  ' and aaSubLedgerDistID =' + @I_nDistID) exec ('declare aaSubLedDist cursor fast_forward FOR select SUM(DEBITAMT),SUM(CRDTAMNT) from ' + @I_cTableAssign + ' where aaSubLedgerHdrID = ' + @I_nHdrID + ' and aaSubLedgerDistID =' + @I_nDistID) open aaSubLedDist fetch next from aaSubLedDist into @nTotAssignDebitAmt,@nTotAssignCreditAmt close aaSubLedDist deallocate aaSubLedDist  exec aagValidateIsFullAssignment @I_nHdrID,@IsFullAssignment output   if @IsFullAssignment=0   if @I_nValidationLevel <> 1 and (@nTotAssignDebitAmt <> @I_nDistDebitAmt or @nTotAssignCreditAmt <> @I_nDistCreditAmt)  begin   if (select aaIsOptionSet from AAG00700 where aaOption=12)<>1   set @O_fSuccess = 0  end   set nocount off  return end    
GO
GRANT EXECUTE ON  [dbo].[aagAlertForPartialAssignmentSubLedDist] TO [DYNGRP]
GO