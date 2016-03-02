SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT00001L_3] (@Extender_Type_RS smallint, @CMPANYID_RS smallint, @Extender_Resource_Number_RS int, @Extender_Type_RE smallint, @CMPANYID_RE smallint, @Extender_Resource_Number_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Type_RS IS NULL BEGIN SELECT TOP 25  Extender_Resource_Number, CMPANYID, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT00001 ORDER BY Extender_Type DESC, CMPANYID DESC, Extender_Resource_Number DESC END ELSE IF @Extender_Type_RS = @Extender_Type_RE BEGIN SELECT TOP 25  Extender_Resource_Number, CMPANYID, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT00001 WHERE Extender_Type = @Extender_Type_RS AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND Extender_Resource_Number BETWEEN @Extender_Resource_Number_RS AND @Extender_Resource_Number_RE ORDER BY Extender_Type DESC, CMPANYID DESC, Extender_Resource_Number DESC END ELSE BEGIN SELECT TOP 25  Extender_Resource_Number, CMPANYID, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT00001 WHERE Extender_Type BETWEEN @Extender_Type_RS AND @Extender_Type_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND Extender_Resource_Number BETWEEN @Extender_Resource_Number_RS AND @Extender_Resource_Number_RE ORDER BY Extender_Type DESC, CMPANYID DESC, Extender_Resource_Number DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT00001L_3] TO [DYNGRP]
GO
