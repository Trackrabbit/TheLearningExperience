SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA41100SS_2] (@LOCATNID char(15)) AS  set nocount on SELECT TOP 1  LOCATIONINDX, LOCATNID, STATEDESCR, COUNTYDESCR, CITYDESCR, STATEABBREV, STATECD, COUNTYCODE, CITYCODE, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41100 WHERE LOCATNID = @LOCATNID ORDER BY LOCATNID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA41100SS_2] TO [DYNGRP]
GO
