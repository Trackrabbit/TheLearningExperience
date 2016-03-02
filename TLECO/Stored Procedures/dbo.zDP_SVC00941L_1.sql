SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00941L_1] (@TASKCD_RS char(11), @TASKCD_RE char(11)) AS  set nocount on IF @TASKCD_RS IS NULL BEGIN SELECT TOP 25  TASKCD, TASKCDDSC, DEX_ROW_ID FROM .SVC00941 ORDER BY TASKCD DESC END ELSE IF @TASKCD_RS = @TASKCD_RE BEGIN SELECT TOP 25  TASKCD, TASKCDDSC, DEX_ROW_ID FROM .SVC00941 WHERE TASKCD = @TASKCD_RS ORDER BY TASKCD DESC END ELSE BEGIN SELECT TOP 25  TASKCD, TASKCDDSC, DEX_ROW_ID FROM .SVC00941 WHERE TASKCD BETWEEN @TASKCD_RS AND @TASKCD_RE ORDER BY TASKCD DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00941L_1] TO [DYNGRP]
GO
