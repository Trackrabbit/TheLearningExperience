SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10000UN_2] (@BS int, @Navigation_Name char(65), @Navigation_Name_RS char(65), @Navigation_Name_RE char(65)) AS set nocount on IF @Navigation_Name_RS IS NULL BEGIN SELECT TOP 25  Navigation_ID, Navigation_Name, Navigation_Number, Navigation_List_Type, Command_Number, Series_Number, Display_Status_Image, Table_Number, Field_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .NLB10000 WHERE ( Navigation_Name > @Navigation_Name ) ORDER BY Navigation_Name ASC, DEX_ROW_ID ASC END ELSE IF @Navigation_Name_RS = @Navigation_Name_RE BEGIN SELECT TOP 25  Navigation_ID, Navigation_Name, Navigation_Number, Navigation_List_Type, Command_Number, Series_Number, Display_Status_Image, Table_Number, Field_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .NLB10000 WHERE Navigation_Name = @Navigation_Name_RS AND ( Navigation_Name > @Navigation_Name ) ORDER BY Navigation_Name ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Navigation_ID, Navigation_Name, Navigation_Number, Navigation_List_Type, Command_Number, Series_Number, Display_Status_Image, Table_Number, Field_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .NLB10000 WHERE Navigation_Name BETWEEN @Navigation_Name_RS AND @Navigation_Name_RE AND ( Navigation_Name > @Navigation_Name ) ORDER BY Navigation_Name ASC, DEX_ROW_ID ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10000UN_2] TO [DYNGRP]
GO
