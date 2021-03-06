SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40701F_1] (@LOCNCODE_RS char(11), @BIN_RS char(15), @LOCNCODE_RE char(11), @BIN_RE char(15)) AS  set nocount on IF @LOCNCODE_RS IS NULL BEGIN SELECT TOP 25  LOCNCODE, BIN, NOTEINDX, DEX_ROW_ID FROM .IV40701 ORDER BY LOCNCODE ASC, BIN ASC END ELSE IF @LOCNCODE_RS = @LOCNCODE_RE BEGIN SELECT TOP 25  LOCNCODE, BIN, NOTEINDX, DEX_ROW_ID FROM .IV40701 WHERE LOCNCODE = @LOCNCODE_RS AND BIN BETWEEN @BIN_RS AND @BIN_RE ORDER BY LOCNCODE ASC, BIN ASC END ELSE BEGIN SELECT TOP 25  LOCNCODE, BIN, NOTEINDX, DEX_ROW_ID FROM .IV40701 WHERE LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BIN BETWEEN @BIN_RS AND @BIN_RE ORDER BY LOCNCODE ASC, BIN ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40701F_1] TO [DYNGRP]
GO
