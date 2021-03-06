SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41100F_1] (@STATECD_RS char(3), @STATECD_RE char(3)) AS  set nocount on IF @STATECD_RS IS NULL BEGIN SELECT TOP 25  STATECD, STATENAM, DEX_ROW_ID FROM .UPR41100 ORDER BY STATECD ASC END ELSE IF @STATECD_RS = @STATECD_RE BEGIN SELECT TOP 25  STATECD, STATENAM, DEX_ROW_ID FROM .UPR41100 WHERE STATECD = @STATECD_RS ORDER BY STATECD ASC END ELSE BEGIN SELECT TOP 25  STATECD, STATENAM, DEX_ROW_ID FROM .UPR41100 WHERE STATECD BETWEEN @STATECD_RS AND @STATECD_RE ORDER BY STATECD ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41100F_1] TO [DYNGRP]
GO
