SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create         Function [dbo].[aagGetDistID]( @aaHdrID int, @TableID int ) returns  int  begin declare @aagGetDistID int if @TableID = 10000  begin select @aagGetDistID = isnull(max(aaGLWorkDistID),0) + 1 from AAG10001 where aaGLWorkHdrID = @aaHdrID end else if @TableID = 20000  begin select @aagGetDistID = isnull(max(aaSubLedgerDistID),0) + 1 from AAG20001 where aaSubLedgerDistID = @aaHdrID end else if @TableID = 30000  begin select @aagGetDistID = isnull(max(aaGLDistID),0) + 1 from AAG30001 where aaGLHdrID = @aaHdrID end return @aagGetDistID end     
GO
GRANT EXECUTE ON  [dbo].[aagGetDistID] TO [DYNGRP]
GO
