SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20700F_2] (@Extender_Import_Desc_RS char(65), @Extender_Import_Desc_RE char(65)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Import_Desc_RS IS NULL BEGIN SELECT TOP 25  Extender_Import_ID, Extender_Import_Desc, Import_File_Type, Extender_Type, Extender_ID, Field_ID, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20700 ORDER BY Extender_Import_Desc ASC, DEX_ROW_ID ASC END ELSE IF @Extender_Import_Desc_RS = @Extender_Import_Desc_RE BEGIN SELECT TOP 25  Extender_Import_ID, Extender_Import_Desc, Import_File_Type, Extender_Type, Extender_ID, Field_ID, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20700 WHERE Extender_Import_Desc = @Extender_Import_Desc_RS ORDER BY Extender_Import_Desc ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Import_ID, Extender_Import_Desc, Import_File_Type, Extender_Type, Extender_ID, Field_ID, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20700 WHERE Extender_Import_Desc BETWEEN @Extender_Import_Desc_RS AND @Extender_Import_Desc_RE ORDER BY Extender_Import_Desc ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20700F_2] TO [DYNGRP]
GO
