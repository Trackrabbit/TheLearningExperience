SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41100N_2] (@BS int, @STATENAM char(21), @STATECD char(3), @STATENAM_RS char(21), @STATECD_RS char(3), @STATENAM_RE char(21), @STATECD_RE char(3)) AS  set nocount on IF @STATENAM_RS IS NULL BEGIN SELECT TOP 25  STATECD, STATENAM, DEX_ROW_ID FROM .UPR41100 WHERE ( STATENAM = @STATENAM AND STATECD > @STATECD OR STATENAM > @STATENAM ) ORDER BY STATENAM ASC, STATECD ASC END ELSE IF @STATENAM_RS = @STATENAM_RE BEGIN SELECT TOP 25  STATECD, STATENAM, DEX_ROW_ID FROM .UPR41100 WHERE STATENAM = @STATENAM_RS AND STATECD BETWEEN @STATECD_RS AND @STATECD_RE AND ( STATENAM = @STATENAM AND STATECD > @STATECD OR STATENAM > @STATENAM ) ORDER BY STATENAM ASC, STATECD ASC END ELSE BEGIN SELECT TOP 25  STATECD, STATENAM, DEX_ROW_ID FROM .UPR41100 WHERE STATENAM BETWEEN @STATENAM_RS AND @STATENAM_RE AND STATECD BETWEEN @STATECD_RS AND @STATECD_RE AND ( STATENAM = @STATENAM AND STATECD > @STATECD OR STATENAM > @STATENAM ) ORDER BY STATENAM ASC, STATECD ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41100N_2] TO [DYNGRP]
GO
