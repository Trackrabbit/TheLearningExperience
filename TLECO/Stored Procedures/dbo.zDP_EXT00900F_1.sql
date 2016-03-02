SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT00900F_1] (@Extender_Lookup_ID_RS char(15), @STR30_RS char(31), @Extender_Lookup_ID_RE char(15), @STR30_RE char(31)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Lookup_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Lookup_ID, STR30, UD_Form_Field_Desc, DEX_ROW_ID FROM .EXT00900 ORDER BY Extender_Lookup_ID ASC, STR30 ASC END ELSE IF @Extender_Lookup_ID_RS = @Extender_Lookup_ID_RE BEGIN SELECT TOP 25  Extender_Lookup_ID, STR30, UD_Form_Field_Desc, DEX_ROW_ID FROM .EXT00900 WHERE Extender_Lookup_ID = @Extender_Lookup_ID_RS AND STR30 BETWEEN @STR30_RS AND @STR30_RE ORDER BY Extender_Lookup_ID ASC, STR30 ASC END ELSE BEGIN SELECT TOP 25  Extender_Lookup_ID, STR30, UD_Form_Field_Desc, DEX_ROW_ID FROM .EXT00900 WHERE Extender_Lookup_ID BETWEEN @Extender_Lookup_ID_RS AND @Extender_Lookup_ID_RE AND STR30 BETWEEN @STR30_RS AND @STR30_RE ORDER BY Extender_Lookup_ID ASC, STR30 ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT00900F_1] TO [DYNGRP]
GO
