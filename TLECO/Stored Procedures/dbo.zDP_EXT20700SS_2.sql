SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20700SS_2] (@Extender_Import_Desc char(65)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Import_ID, Extender_Import_Desc, Import_File_Type, Extender_Type, Extender_ID, Field_ID, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20700 WHERE Extender_Import_Desc = @Extender_Import_Desc ORDER BY Extender_Import_Desc ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20700SS_2] TO [DYNGRP]
GO
