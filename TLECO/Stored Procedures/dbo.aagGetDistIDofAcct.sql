SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE    procedure  [dbo].[aagGetDistIDofAcct]  @iHdrID int = 0, @iLineSEQNum int = 0, @iOffsetAcct tinyint = 0, @oDistIDofAcct int = 0 out  as  if @iHdrID = 0 or @iLineSEQNum = 0  return  select @oDistIDofAcct = aaSubLedgerDistID from AAG20001  where aaSubLedgerHdrID = @iHdrID and SEQNUMBR = @iLineSEQNum and aaOffsetAcct = @iOffsetAcct  return 0    
GO
GRANT EXECUTE ON  [dbo].[aagGetDistIDofAcct] TO [DYNGRP]
GO
