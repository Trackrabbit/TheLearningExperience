SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT21000SI] (@Extender_Solution_ID int, @Extender_Solution_Name char(65), @CREATDDT datetime, @CRUSRID char(15), @MODIFDT datetime, @MDFUSRID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT21000 (Extender_Solution_ID, Extender_Solution_Name, CREATDDT, CRUSRID, MODIFDT, MDFUSRID) VALUES ( @Extender_Solution_ID, @Extender_Solution_Name, @CREATDDT, @CRUSRID, @MODIFDT, @MDFUSRID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT21000SI] TO [DYNGRP]
GO
