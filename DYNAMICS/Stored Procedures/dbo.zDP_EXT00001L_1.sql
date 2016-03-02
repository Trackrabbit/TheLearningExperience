SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT00001L_1] (@Extender_Resource_Number_RS int, @Extender_Resource_Number_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Resource_Number_RS IS NULL BEGIN SELECT TOP 25  Extender_Resource_Number, CMPANYID, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT00001 ORDER BY Extender_Resource_Number DESC END ELSE IF @Extender_Resource_Number_RS = @Extender_Resource_Number_RE BEGIN SELECT TOP 25  Extender_Resource_Number, CMPANYID, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT00001 WHERE Extender_Resource_Number = @Extender_Resource_Number_RS ORDER BY Extender_Resource_Number DESC END ELSE BEGIN SELECT TOP 25  Extender_Resource_Number, CMPANYID, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT00001 WHERE Extender_Resource_Number BETWEEN @Extender_Resource_Number_RS AND @Extender_Resource_Number_RE ORDER BY Extender_Resource_Number DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT00001L_1] TO [DYNGRP]
GO
