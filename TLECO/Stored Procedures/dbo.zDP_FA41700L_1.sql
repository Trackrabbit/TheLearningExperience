SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA41700L_1] (@RETIREEVENT_RS int, @RETIREEVENT_RE int) AS  set nocount on IF @RETIREEVENT_RS IS NULL BEGIN SELECT TOP 25  RETIREEVENT, EVENTDSC, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41700 ORDER BY RETIREEVENT DESC END ELSE IF @RETIREEVENT_RS = @RETIREEVENT_RE BEGIN SELECT TOP 25  RETIREEVENT, EVENTDSC, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41700 WHERE RETIREEVENT = @RETIREEVENT_RS ORDER BY RETIREEVENT DESC END ELSE BEGIN SELECT TOP 25  RETIREEVENT, EVENTDSC, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41700 WHERE RETIREEVENT BETWEEN @RETIREEVENT_RS AND @RETIREEVENT_RE ORDER BY RETIREEVENT DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA41700L_1] TO [DYNGRP]
GO