SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10000L_1] (@Navigation_ID_RS char(15), @Navigation_ID_RE char(15)) AS set nocount on IF @Navigation_ID_RS IS NULL BEGIN SELECT TOP 25  Navigation_ID, Navigation_Name, Navigation_Number, Navigation_List_Type, Command_Number, Series_Number, Display_Status_Image, Table_Number, Field_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .NLB10000 ORDER BY Navigation_ID DESC END ELSE IF @Navigation_ID_RS = @Navigation_ID_RE BEGIN SELECT TOP 25  Navigation_ID, Navigation_Name, Navigation_Number, Navigation_List_Type, Command_Number, Series_Number, Display_Status_Image, Table_Number, Field_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .NLB10000 WHERE Navigation_ID = @Navigation_ID_RS ORDER BY Navigation_ID DESC END ELSE BEGIN SELECT TOP 25  Navigation_ID, Navigation_Name, Navigation_Number, Navigation_List_Type, Command_Number, Series_Number, Display_Status_Image, Table_Number, Field_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .NLB10000 WHERE Navigation_ID BETWEEN @Navigation_ID_RS AND @Navigation_ID_RE ORDER BY Navigation_ID DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10000L_1] TO [DYNGRP]
GO
