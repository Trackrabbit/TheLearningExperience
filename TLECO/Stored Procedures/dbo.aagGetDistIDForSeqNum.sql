SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE    procedure  [dbo].[aagGetDistIDForSeqNum]  @iHdrID int = 0,  @iSeqNum int = 0,  @oDistID int output   as  select @oDistID = min(aaSubLedgerDistID) from AAG20001 where aaSubLedgerHdrID = @iHdrID and SEQNUMBR = @iSeqNum    
GO
GRANT EXECUTE ON  [dbo].[aagGetDistIDForSeqNum] TO [DYNGRP]
GO
