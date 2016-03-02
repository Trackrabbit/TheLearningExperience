SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10000L_4] (@Series_Number_RS smallint, @Navigation_ID_RS char(15), @Series_Number_RE smallint, @Navigation_ID_RE char(15)) AS set nocount on IF @Series_Number_RS IS NULL BEGIN SELECT TOP 25  Navigation_ID, Navigation_Name, Navigation_Number, Navigation_List_Type, Command_Number, Series_Number, Display_Status_Image, Table_Number, Field_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .NLB10000 ORDER BY Series_Number DESC, Navigation_ID DESC END ELSE IF @Series_Number_RS = @Series_Number_RE BEGIN SELECT TOP 25  Navigation_ID, Navigation_Name, Navigation_Number, Navigation_List_Type, Command_Number, Series_Number, Display_Status_Image, Table_Number, Field_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .NLB10000 WHERE Series_Number = @Series_Number_RS AND Navigation_ID BETWEEN @Navigation_ID_RS AND @Navigation_ID_RE ORDER BY Series_Number DESC, Navigation_ID DESC END ELSE BEGIN SELECT TOP 25  Navigation_ID, Navigation_Name, Navigation_Number, Navigation_List_Type, Command_Number, Series_Number, Display_Status_Image, Table_Number, Field_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .NLB10000 WHERE Series_Number BETWEEN @Series_Number_RS AND @Series_Number_RE AND Navigation_ID BETWEEN @Navigation_ID_RS AND @Navigation_ID_RE ORDER BY Series_Number DESC, Navigation_ID DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10000L_4] TO [DYNGRP]
GO
