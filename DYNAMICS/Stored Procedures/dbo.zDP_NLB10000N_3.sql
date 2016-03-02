SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10000N_3] (@BS int, @Navigation_Number smallint, @Navigation_Number_RS smallint, @Navigation_Number_RE smallint) AS set nocount on IF @Navigation_Number_RS IS NULL BEGIN SELECT TOP 25  Navigation_ID, Navigation_Name, Navigation_Number, Navigation_List_Type, Command_Number, Series_Number, Display_Status_Image, Table_Number, Field_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .NLB10000 WHERE ( Navigation_Number > @Navigation_Number ) ORDER BY Navigation_Number ASC END ELSE IF @Navigation_Number_RS = @Navigation_Number_RE BEGIN SELECT TOP 25  Navigation_ID, Navigation_Name, Navigation_Number, Navigation_List_Type, Command_Number, Series_Number, Display_Status_Image, Table_Number, Field_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .NLB10000 WHERE Navigation_Number = @Navigation_Number_RS AND ( Navigation_Number > @Navigation_Number ) ORDER BY Navigation_Number ASC END ELSE BEGIN SELECT TOP 25  Navigation_ID, Navigation_Name, Navigation_Number, Navigation_List_Type, Command_Number, Series_Number, Display_Status_Image, Table_Number, Field_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .NLB10000 WHERE Navigation_Number BETWEEN @Navigation_Number_RS AND @Navigation_Number_RE AND ( Navigation_Number > @Navigation_Number ) ORDER BY Navigation_Number ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10000N_3] TO [DYNGRP]
GO
