SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT00900SS_1] (@Extender_Lookup_ID char(15), @STR30 char(31)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Lookup_ID, STR30, UD_Form_Field_Desc, DEX_ROW_ID FROM .EXT00900 WHERE Extender_Lookup_ID = @Extender_Lookup_ID AND STR30 = @STR30 ORDER BY Extender_Lookup_ID ASC, STR30 ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT00900SS_1] TO [DYNGRP]
GO
