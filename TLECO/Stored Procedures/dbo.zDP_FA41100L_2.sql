SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA41100L_2] (@LOCATNID_RS char(15), @LOCATNID_RE char(15)) AS  set nocount on IF @LOCATNID_RS IS NULL BEGIN SELECT TOP 25  LOCATIONINDX, LOCATNID, STATEDESCR, COUNTYDESCR, CITYDESCR, STATEABBREV, STATECD, COUNTYCODE, CITYCODE, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41100 ORDER BY LOCATNID DESC END ELSE IF @LOCATNID_RS = @LOCATNID_RE BEGIN SELECT TOP 25  LOCATIONINDX, LOCATNID, STATEDESCR, COUNTYDESCR, CITYDESCR, STATEABBREV, STATECD, COUNTYCODE, CITYCODE, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41100 WHERE LOCATNID = @LOCATNID_RS ORDER BY LOCATNID DESC END ELSE BEGIN SELECT TOP 25  LOCATIONINDX, LOCATNID, STATEDESCR, COUNTYDESCR, CITYDESCR, STATEABBREV, STATECD, COUNTYCODE, CITYCODE, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41100 WHERE LOCATNID BETWEEN @LOCATNID_RS AND @LOCATNID_RE ORDER BY LOCATNID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA41100L_2] TO [DYNGRP]
GO