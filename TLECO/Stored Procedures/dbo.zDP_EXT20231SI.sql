SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20231SI] (@Extender_Navigation_List int, @Navigation_Field_Type smallint, @LNITMSEQ int, @Field_ID int, @Search_Method smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20231 (Extender_Navigation_List, Navigation_Field_Type, LNITMSEQ, Field_ID, Search_Method) VALUES ( @Extender_Navigation_List, @Navigation_Field_Type, @LNITMSEQ, @Field_ID, @Search_Method) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20231SI] TO [DYNGRP]
GO
