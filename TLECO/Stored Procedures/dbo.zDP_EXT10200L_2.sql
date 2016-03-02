SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT10200L_2] (@Extender_Type_RS smallint, @Extender_ID_RS char(15), @Extender_Type_RE smallint, @Extender_ID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Type_RS IS NULL BEGIN SELECT TOP 25  Lookup_Number, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT10200 ORDER BY Extender_Type DESC, Extender_ID DESC END ELSE IF @Extender_Type_RS = @Extender_Type_RE BEGIN SELECT TOP 25  Lookup_Number, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT10200 WHERE Extender_Type = @Extender_Type_RS AND Extender_ID BETWEEN @Extender_ID_RS AND @Extender_ID_RE ORDER BY Extender_Type DESC, Extender_ID DESC END ELSE BEGIN SELECT TOP 25  Lookup_Number, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT10200 WHERE Extender_Type BETWEEN @Extender_Type_RS AND @Extender_Type_RE AND Extender_ID BETWEEN @Extender_ID_RS AND @Extender_ID_RE ORDER BY Extender_Type DESC, Extender_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT10200L_2] TO [DYNGRP]
GO
