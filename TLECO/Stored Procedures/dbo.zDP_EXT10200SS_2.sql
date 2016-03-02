SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT10200SS_2] (@Extender_Type smallint, @Extender_ID char(15)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Lookup_Number, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT10200 WHERE Extender_Type = @Extender_Type AND Extender_ID = @Extender_ID ORDER BY Extender_Type ASC, Extender_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT10200SS_2] TO [DYNGRP]
GO
