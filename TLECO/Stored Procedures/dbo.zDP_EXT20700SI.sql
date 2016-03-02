SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20700SI] (@Extender_Import_ID char(15), @Extender_Import_Desc char(65), @Import_File_Type smallint, @Extender_Type smallint, @Extender_ID char(15), @Field_ID int, @NOTEINDX numeric(19,5), @CREATDDT datetime, @CRUSRID char(15), @MODIFDT datetime, @MDFUSRID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20700 (Extender_Import_ID, Extender_Import_Desc, Import_File_Type, Extender_Type, Extender_ID, Field_ID, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID) VALUES ( @Extender_Import_ID, @Extender_Import_Desc, @Import_File_Type, @Extender_Type, @Extender_ID, @Field_ID, @NOTEINDX, @CREATDDT, @CRUSRID, @MODIFDT, @MDFUSRID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20700SI] TO [DYNGRP]
GO
