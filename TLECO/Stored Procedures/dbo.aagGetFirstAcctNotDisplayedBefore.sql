SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE proc [dbo].[aagGetFirstAcctNotDisplayedBefore]  @I_nHdrID int,  @O_nFirstAcctIndexNotDisplayed int=0 output,  @O_nFirstAcctDistIDNotDisplayed int=0 output,  @O_nFirstAcctSeqNumNotDisplayed int=0 output,  @O_nFirstAcctIndex int=0 output,  @O_nFirstAcctDistID int=0 output,  @O_nFirstAcctSeqNum int=0 output   AS  select @O_nFirstAcctDistIDNotDisplayed = aaSubLedgerDistID,   @O_nFirstAcctIndexNotDisplayed = ACTINDX,  @O_nFirstAcctSeqNumNotDisplayed = SEQNUMBR from AAG20001 where aaSubLedgerHdrID = @I_nHdrID and aaSubLedgerDistID =  (select min(aaSubLedgerDistID) from AAG20001 DistAlias   where aaSubLedgerHdrID = @I_nHdrID  and aaWinWasOpen = 0   and POSTED = 0   and aaBrowseType <> 0 and aaBrowseType <> 3)  select @O_nFirstAcctDistID = aaSubLedgerDistID,   @O_nFirstAcctIndex = ACTINDX,  @O_nFirstAcctSeqNum = SEQNUMBR from AAG20001 where aaSubLedgerHdrID = @I_nHdrID and aaSubLedgerDistID =  (select min(aaSubLedgerDistID) from AAG20001 DistAlias   where aaSubLedgerHdrID = @I_nHdrID  and POSTED = 0   and aaBrowseType <> 0 and aaBrowseType <> 3)    
GO
GRANT EXECUTE ON  [dbo].[aagGetFirstAcctNotDisplayedBefore] TO [DYNGRP]
GO
