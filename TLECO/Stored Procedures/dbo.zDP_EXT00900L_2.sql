SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT00900L_2] (@Extender_Lookup_ID_RS char(15), @UD_Form_Field_Desc_RS char(65), @Extender_Lookup_ID_RE char(15), @UD_Form_Field_Desc_RE char(65)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Lookup_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Lookup_ID, STR30, UD_Form_Field_Desc, DEX_ROW_ID FROM .EXT00900 ORDER BY Extender_Lookup_ID DESC, UD_Form_Field_Desc DESC, DEX_ROW_ID DESC END ELSE IF @Extender_Lookup_ID_RS = @Extender_Lookup_ID_RE BEGIN SELECT TOP 25  Extender_Lookup_ID, STR30, UD_Form_Field_Desc, DEX_ROW_ID FROM .EXT00900 WHERE Extender_Lookup_ID = @Extender_Lookup_ID_RS AND UD_Form_Field_Desc BETWEEN @UD_Form_Field_Desc_RS AND @UD_Form_Field_Desc_RE ORDER BY Extender_Lookup_ID DESC, UD_Form_Field_Desc DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  Extender_Lookup_ID, STR30, UD_Form_Field_Desc, DEX_ROW_ID FROM .EXT00900 WHERE Extender_Lookup_ID BETWEEN @Extender_Lookup_ID_RS AND @Extender_Lookup_ID_RE AND UD_Form_Field_Desc BETWEEN @UD_Form_Field_Desc_RS AND @UD_Form_Field_Desc_RE ORDER BY Extender_Lookup_ID DESC, UD_Form_Field_Desc DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT00900L_2] TO [DYNGRP]
GO
