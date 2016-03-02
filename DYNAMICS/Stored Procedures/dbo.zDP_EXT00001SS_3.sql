SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT00001SS_3] (@Extender_Type smallint, @CMPANYID smallint, @Extender_Resource_Number int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Resource_Number, CMPANYID, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT00001 WHERE Extender_Type = @Extender_Type AND CMPANYID = @CMPANYID AND Extender_Resource_Number = @Extender_Resource_Number ORDER BY Extender_Type ASC, CMPANYID ASC, Extender_Resource_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT00001SS_3] TO [DYNGRP]
GO
