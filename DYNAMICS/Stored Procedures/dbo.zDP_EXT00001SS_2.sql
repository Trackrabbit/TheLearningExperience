SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT00001SS_2] (@CMPANYID smallint, @Extender_Type smallint, @Extender_ID char(15)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Resource_Number, CMPANYID, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT00001 WHERE CMPANYID = @CMPANYID AND Extender_Type = @Extender_Type AND Extender_ID = @Extender_ID ORDER BY CMPANYID ASC, Extender_Type ASC, Extender_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT00001SS_2] TO [DYNGRP]
GO
