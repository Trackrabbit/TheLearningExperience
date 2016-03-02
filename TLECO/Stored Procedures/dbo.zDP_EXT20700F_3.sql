SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20700F_3] (@Extender_Type_RS smallint, @Extender_ID_RS char(15), @Extender_Type_RE smallint, @Extender_ID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Type_RS IS NULL BEGIN SELECT TOP 25  Extender_Import_ID, Extender_Import_Desc, Import_File_Type, Extender_Type, Extender_ID, Field_ID, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20700 ORDER BY Extender_Type ASC, Extender_ID ASC, DEX_ROW_ID ASC END ELSE IF @Extender_Type_RS = @Extender_Type_RE BEGIN SELECT TOP 25  Extender_Import_ID, Extender_Import_Desc, Import_File_Type, Extender_Type, Extender_ID, Field_ID, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20700 WHERE Extender_Type = @Extender_Type_RS AND Extender_ID BETWEEN @Extender_ID_RS AND @Extender_ID_RE ORDER BY Extender_Type ASC, Extender_ID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Import_ID, Extender_Import_Desc, Import_File_Type, Extender_Type, Extender_ID, Field_ID, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20700 WHERE Extender_Type BETWEEN @Extender_Type_RS AND @Extender_Type_RE AND Extender_ID BETWEEN @Extender_ID_RS AND @Extender_ID_RE ORDER BY Extender_Type ASC, Extender_ID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20700F_3] TO [DYNGRP]
GO
