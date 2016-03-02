SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE    procedure  [dbo].[aagGetTheOtherAcct]  @iHdrID int, @iDistID int, @iPostedTrx  tinyint = 0,  @oDispDistID int out  AS  Declare @DistID int,  @ItemNumber varchar(30),  @BinNumber varchar(20),  @SeqNum int,  @AcctIndex int,  @Offset tinyint Select @ItemNumber = ITEMNMBR, @BinNumber = BINNMBR,  @SeqNum = SEQNUMBR, @Offset = aaOffsetAcct  From AAG20001  Where aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID = @iDistID Select @DistID = aaSubLedgerDistID  from AAG20001  where aaSubLedgerHdrID = @iHdrID and  ITEMNMBR = @ItemNumber and BINNMBR = @BinNumber and  @SeqNum = SEQNUMBR and aaOffsetAcct <> @Offset Exec aagGetDisplayDistID @iHdrID, @DistID, @iPostedTrx, @oDispDistID out    
GO
GRANT EXECUTE ON  [dbo].[aagGetTheOtherAcct] TO [DYNGRP]
GO
