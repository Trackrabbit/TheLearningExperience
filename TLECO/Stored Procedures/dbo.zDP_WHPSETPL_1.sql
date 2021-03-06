SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_WHPSETPL_1] (@SEQNUMBR_RS int, @SEQNUMBR_RE int) AS /* 12.00.0270.000 */ set nocount on IF @SEQNUMBR_RS IS NULL BEGIN SELECT TOP 25  SEQNUMBR, WH_Database, WH_Server_ID, WH_Allow_Database_Change, WH_Allow_Server_Change, DEX_ROW_ID FROM .WHPSETP ORDER BY SEQNUMBR DESC END ELSE IF @SEQNUMBR_RS = @SEQNUMBR_RE BEGIN SELECT TOP 25  SEQNUMBR, WH_Database, WH_Server_ID, WH_Allow_Database_Change, WH_Allow_Server_Change, DEX_ROW_ID FROM .WHPSETP WHERE SEQNUMBR = @SEQNUMBR_RS ORDER BY SEQNUMBR DESC END ELSE BEGIN SELECT TOP 25  SEQNUMBR, WH_Database, WH_Server_ID, WH_Allow_Database_Change, WH_Allow_Server_Change, DEX_ROW_ID FROM .WHPSETP WHERE SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY SEQNUMBR DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_WHPSETPL_1] TO [DYNGRP]
GO
