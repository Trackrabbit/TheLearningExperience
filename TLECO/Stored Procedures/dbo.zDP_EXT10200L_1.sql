SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT10200L_1] (@Lookup_Number_RS int, @Lookup_Number_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Lookup_Number_RS IS NULL BEGIN SELECT TOP 25  Lookup_Number, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT10200 ORDER BY Lookup_Number DESC END ELSE IF @Lookup_Number_RS = @Lookup_Number_RE BEGIN SELECT TOP 25  Lookup_Number, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT10200 WHERE Lookup_Number = @Lookup_Number_RS ORDER BY Lookup_Number DESC END ELSE BEGIN SELECT TOP 25  Lookup_Number, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT10200 WHERE Lookup_Number BETWEEN @Lookup_Number_RS AND @Lookup_Number_RE ORDER BY Lookup_Number DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT10200L_1] TO [DYNGRP]
GO
