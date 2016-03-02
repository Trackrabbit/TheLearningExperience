SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS464000SI] (@BSSI_OccupancyTypeID char(25), @BSSI_Description char(51), @BSSI_ExcludeFromGLA tinyint, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .BS464000 (BSSI_OccupancyTypeID, BSSI_Description, BSSI_ExcludeFromGLA, NOTEINDX) VALUES ( @BSSI_OccupancyTypeID, @BSSI_Description, @BSSI_ExcludeFromGLA, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS464000SI] TO [DYNGRP]
GO
