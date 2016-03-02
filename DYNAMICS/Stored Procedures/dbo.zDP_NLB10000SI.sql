SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10000SI] (@Navigation_ID char(15), @Navigation_Name char(65), @Navigation_Number smallint, @Navigation_List_Type smallint, @Command_Number smallint, @Series_Number smallint, @Display_Status_Image tinyint, @Table_Number smallint, @Field_Number smallint, @NOTEINDX numeric(19,5), @CREATDDT datetime, @CRUSRID char(15), @MODIFDT datetime, @MDFUSRID char(15), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .NLB10000 (Navigation_ID, Navigation_Name, Navigation_Number, Navigation_List_Type, Command_Number, Series_Number, Display_Status_Image, Table_Number, Field_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID) VALUES ( @Navigation_ID, @Navigation_Name, @Navigation_Number, @Navigation_List_Type, @Command_Number, @Series_Number, @Display_Status_Image, @Table_Number, @Field_Number, @NOTEINDX, @CREATDDT, @CRUSRID, @MODIFDT, @MDFUSRID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10000SI] TO [DYNGRP]
GO
