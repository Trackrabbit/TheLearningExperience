SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[aagGetLastPostedDistSeqNum] @I_nHdrID int,  @O_nSeqNum int = 0 output, @O_nStatus int = 0 output  as  select @O_nSeqNum=max(SEQNUMBR) from AAG20001 where aaSubLedgerHdrID = @I_nHdrID and POSTED = 1    
GO
GRANT EXECUTE ON  [dbo].[aagGetLastPostedDistSeqNum] TO [DYNGRP]
GO
