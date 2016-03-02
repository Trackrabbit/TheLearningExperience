SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create           Function [dbo].[aagGetNextHdrID](  @TableID int ) returns  int  begin declare @aagGetHdrID int, @Status  smallint  if @TableID = 10000  begin select  @aagGetHdrID = isnull(max(aaGLWorkHdrID),0) + 1 from AAG10000  end else if @TableID = 20000  begin select  @aagGetHdrID = isnull(max(aaSubLedgerHdrID),0) + 1 from AAG20000  end else if @TableID = 30000  begin select  @aagGetHdrID = isnull(max(aaGLHdrID),0) + 1 from AAG30000  end  return @aagGetHdrID end     
GO
GRANT EXECUTE ON  [dbo].[aagGetNextHdrID] TO [DYNGRP]
GO
