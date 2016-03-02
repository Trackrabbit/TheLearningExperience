SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT21010SI] (@Extender_Solution_ID int, @Extender_Type smallint, @Extender_ID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT21010 (Extender_Solution_ID, Extender_Type, Extender_ID) VALUES ( @Extender_Solution_ID, @Extender_Type, @Extender_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT21010SI] TO [DYNGRP]
GO
