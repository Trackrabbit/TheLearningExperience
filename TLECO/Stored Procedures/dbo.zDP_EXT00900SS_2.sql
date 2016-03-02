SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT00900SS_2] (@Extender_Lookup_ID char(15), @UD_Form_Field_Desc char(65)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Lookup_ID, STR30, UD_Form_Field_Desc, DEX_ROW_ID FROM .EXT00900 WHERE Extender_Lookup_ID = @Extender_Lookup_ID AND UD_Form_Field_Desc = @UD_Form_Field_Desc ORDER BY Extender_Lookup_ID ASC, UD_Form_Field_Desc ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT00900SS_2] TO [DYNGRP]
GO
