SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20231SS_2] (@Extender_Navigation_List int, @Navigation_Field_Type smallint, @Field_ID int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Navigation_List, Navigation_Field_Type, LNITMSEQ, Field_ID, Search_Method, DEX_ROW_ID FROM .EXT20231 WHERE Extender_Navigation_List = @Extender_Navigation_List AND Navigation_Field_Type = @Navigation_Field_Type AND Field_ID = @Field_ID ORDER BY Extender_Navigation_List ASC, Navigation_Field_Type ASC, Field_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20231SS_2] TO [DYNGRP]
GO
