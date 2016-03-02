SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10000SS_2] (@Navigation_Name char(65)) AS set nocount on SELECT TOP 1  Navigation_ID, Navigation_Name, Navigation_Number, Navigation_List_Type, Command_Number, Series_Number, Display_Status_Image, Table_Number, Field_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .NLB10000 WHERE Navigation_Name = @Navigation_Name ORDER BY Navigation_Name ASC, DEX_ROW_ID ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10000SS_2] TO [DYNGRP]
GO
