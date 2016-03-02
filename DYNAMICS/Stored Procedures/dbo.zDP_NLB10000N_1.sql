SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10000N_1] (@BS int, @Navigation_ID char(15), @Navigation_ID_RS char(15), @Navigation_ID_RE char(15)) AS set nocount on IF @Navigation_ID_RS IS NULL BEGIN SELECT TOP 25  Navigation_ID, Navigation_Name, Navigation_Number, Navigation_List_Type, Command_Number, Series_Number, Display_Status_Image, Table_Number, Field_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .NLB10000 WHERE ( Navigation_ID > @Navigation_ID ) ORDER BY Navigation_ID ASC END ELSE IF @Navigation_ID_RS = @Navigation_ID_RE BEGIN SELECT TOP 25  Navigation_ID, Navigation_Name, Navigation_Number, Navigation_List_Type, Command_Number, Series_Number, Display_Status_Image, Table_Number, Field_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .NLB10000 WHERE Navigation_ID = @Navigation_ID_RS AND ( Navigation_ID > @Navigation_ID ) ORDER BY Navigation_ID ASC END ELSE BEGIN SELECT TOP 25  Navigation_ID, Navigation_Name, Navigation_Number, Navigation_List_Type, Command_Number, Series_Number, Display_Status_Image, Table_Number, Field_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .NLB10000 WHERE Navigation_ID BETWEEN @Navigation_ID_RS AND @Navigation_ID_RE AND ( Navigation_ID > @Navigation_ID ) ORDER BY Navigation_ID ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10000N_1] TO [DYNGRP]
GO
