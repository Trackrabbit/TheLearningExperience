SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT43400SI] (@Extender_Lookup_ID char(15), @Extender_Lookup_Desc char(65), @PRODID smallint, @TABLTECH char(79), @FIELDNAM char(31), @Field_Name_2 char(31), @NOTEINDX numeric(19,5), @FORMNAME char(79), @WINNAME char(79), @Field_Name_3 char(31), @CREATDDT datetime, @CRUSRID char(15), @MODIFDT datetime, @MDFUSRID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT43400 (Extender_Lookup_ID, Extender_Lookup_Desc, PRODID, TABLTECH, FIELDNAM, Field_Name_2, NOTEINDX, FORMNAME, WINNAME, Field_Name_3, CREATDDT, CRUSRID, MODIFDT, MDFUSRID) VALUES ( @Extender_Lookup_ID, @Extender_Lookup_Desc, @PRODID, @TABLTECH, @FIELDNAM, @Field_Name_2, @NOTEINDX, @FORMNAME, @WINNAME, @Field_Name_3, @CREATDDT, @CRUSRID, @MODIFDT, @MDFUSRID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT43400SI] TO [DYNGRP]
GO
