SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20700N_1] (@BS int, @Extender_Import_ID char(15), @Extender_Import_ID_RS char(15), @Extender_Import_ID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Import_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Import_ID, Extender_Import_Desc, Import_File_Type, Extender_Type, Extender_ID, Field_ID, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20700 WHERE ( Extender_Import_ID > @Extender_Import_ID ) ORDER BY Extender_Import_ID ASC END ELSE IF @Extender_Import_ID_RS = @Extender_Import_ID_RE BEGIN SELECT TOP 25  Extender_Import_ID, Extender_Import_Desc, Import_File_Type, Extender_Type, Extender_ID, Field_ID, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20700 WHERE Extender_Import_ID = @Extender_Import_ID_RS AND ( Extender_Import_ID > @Extender_Import_ID ) ORDER BY Extender_Import_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Import_ID, Extender_Import_Desc, Import_File_Type, Extender_Type, Extender_ID, Field_ID, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20700 WHERE Extender_Import_ID BETWEEN @Extender_Import_ID_RS AND @Extender_Import_ID_RE AND ( Extender_Import_ID > @Extender_Import_ID ) ORDER BY Extender_Import_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20700N_1] TO [DYNGRP]
GO
