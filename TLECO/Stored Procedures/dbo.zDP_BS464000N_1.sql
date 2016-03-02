SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS464000N_1] (@BS int, @BSSI_OccupancyTypeID char(25), @BSSI_OccupancyTypeID_RS char(25), @BSSI_OccupancyTypeID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_OccupancyTypeID_RS IS NULL BEGIN SELECT TOP 25  BSSI_OccupancyTypeID, BSSI_Description, BSSI_ExcludeFromGLA, NOTEINDX, DEX_ROW_ID FROM .BS464000 WHERE ( BSSI_OccupancyTypeID > @BSSI_OccupancyTypeID ) ORDER BY BSSI_OccupancyTypeID ASC END ELSE IF @BSSI_OccupancyTypeID_RS = @BSSI_OccupancyTypeID_RE BEGIN SELECT TOP 25  BSSI_OccupancyTypeID, BSSI_Description, BSSI_ExcludeFromGLA, NOTEINDX, DEX_ROW_ID FROM .BS464000 WHERE BSSI_OccupancyTypeID = @BSSI_OccupancyTypeID_RS AND ( BSSI_OccupancyTypeID > @BSSI_OccupancyTypeID ) ORDER BY BSSI_OccupancyTypeID ASC END ELSE BEGIN SELECT TOP 25  BSSI_OccupancyTypeID, BSSI_Description, BSSI_ExcludeFromGLA, NOTEINDX, DEX_ROW_ID FROM .BS464000 WHERE BSSI_OccupancyTypeID BETWEEN @BSSI_OccupancyTypeID_RS AND @BSSI_OccupancyTypeID_RE AND ( BSSI_OccupancyTypeID > @BSSI_OccupancyTypeID ) ORDER BY BSSI_OccupancyTypeID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS464000N_1] TO [DYNGRP]
GO
