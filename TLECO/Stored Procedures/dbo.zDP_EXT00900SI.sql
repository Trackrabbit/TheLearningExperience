SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT00900SI] (@Extender_Lookup_ID char(15), @STR30 char(31), @UD_Form_Field_Desc char(65), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT00900 (Extender_Lookup_ID, STR30, UD_Form_Field_Desc) VALUES ( @Extender_Lookup_ID, @STR30, @UD_Form_Field_Desc) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT00900SI] TO [DYNGRP]
GO
