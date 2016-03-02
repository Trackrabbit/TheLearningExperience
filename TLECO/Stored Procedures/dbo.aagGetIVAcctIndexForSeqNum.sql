SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE    procedure  [dbo].[aagGetIVAcctIndexForSeqNum]  @iHdrID int = 0,  @iSeqNum   int = 0,  @oAcctIndex  int = 0 output,  @oOffsetAcct tinyint = 0 output,  @iAutoOpen tinyint = 0   As  Declare @nAcctIndex int,  @Linked tinyint,  @TrackCust tinyint,  @TrackVend tinyint,  @TrackItem tinyint,  @TrackSite tinyint  Set @nAcctIndex = 0 Set @oOffsetAcct = 0  if @iAutoOpen = 0   Begin  Select @nAcctIndex = ACTINDX from AAG20001  where aaSubLedgerHdrID = @iHdrID and SEQNUMBR = @iSeqNum and   aaOffsetAcct = 0 and aaBrowseType <> 0  if @nAcctIndex = 0  Begin  Select @nAcctIndex = ACTINDX from AAG20001  where aaSubLedgerHdrID = @iHdrID and SEQNUMBR = @iSeqNum and   aaOffsetAcct = 1 and aaBrowseType <> 0  Set @oOffsetAcct = 1  End  End else  Begin  Select @nAcctIndex = ACTINDX from AAG20001  where aaSubLedgerHdrID = @iHdrID and SEQNUMBR = @iSeqNum and   aaOffsetAcct = 0 and aaBrowseType <> 0 and aaWinWasOpen = 0  if @nAcctIndex = 0  Begin  Select @nAcctIndex = ACTINDX from AAG20001  where aaSubLedgerHdrID = @iHdrID and SEQNUMBR = @iSeqNum and   aaOffsetAcct = 1 and aaBrowseType <> 0 and aaWinWasOpen = 0  Set @oOffsetAcct = 1  End  End set @oAcctIndex = @nAcctIndex    
GO
GRANT EXECUTE ON  [dbo].[aagGetIVAcctIndexForSeqNum] TO [DYNGRP]
GO
