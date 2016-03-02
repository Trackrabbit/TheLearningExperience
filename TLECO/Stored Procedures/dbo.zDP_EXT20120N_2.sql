SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20120N_2] (@BS int, @Extender_Window_ID char(15), @Extender_Enquiry_ID int, @Extender_Window_ID_RS char(15), @Extender_Enquiry_ID_RS int, @Extender_Window_ID_RE char(15), @Extender_Enquiry_ID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Window_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Enquiry_ID, Extender_Window_Name, Extender_Window_ID, PRODID, Long_Form_Name, Long_Window_Name, Extender_Hot_Key, Read_Only_CB, Use_Alternate_Key_CB, Extender_Key_Fields_1, Extender_Key_Fields_2, Extender_Key_Fields_3, Extender_Key_Fields_4, Extender_Key_Fields_5, Extender_Key_Windows_1, Extender_Key_Windows_2, Extender_Key_Windows_3, Extender_Key_Windows_4, Extender_Key_Windows_5, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, Display_In_Tab, Tab_Name, DEX_ROW_ID FROM .EXT20120 WHERE ( Extender_Window_ID = @Extender_Window_ID AND Extender_Enquiry_ID > @Extender_Enquiry_ID OR Extender_Window_ID > @Extender_Window_ID ) ORDER BY Extender_Window_ID ASC, Extender_Enquiry_ID ASC END ELSE IF @Extender_Window_ID_RS = @Extender_Window_ID_RE BEGIN SELECT TOP 25  Extender_Enquiry_ID, Extender_Window_Name, Extender_Window_ID, PRODID, Long_Form_Name, Long_Window_Name, Extender_Hot_Key, Read_Only_CB, Use_Alternate_Key_CB, Extender_Key_Fields_1, Extender_Key_Fields_2, Extender_Key_Fields_3, Extender_Key_Fields_4, Extender_Key_Fields_5, Extender_Key_Windows_1, Extender_Key_Windows_2, Extender_Key_Windows_3, Extender_Key_Windows_4, Extender_Key_Windows_5, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, Display_In_Tab, Tab_Name, DEX_ROW_ID FROM .EXT20120 WHERE Extender_Window_ID = @Extender_Window_ID_RS AND Extender_Enquiry_ID BETWEEN @Extender_Enquiry_ID_RS AND @Extender_Enquiry_ID_RE AND ( Extender_Window_ID = @Extender_Window_ID AND Extender_Enquiry_ID > @Extender_Enquiry_ID OR Extender_Window_ID > @Extender_Window_ID ) ORDER BY Extender_Window_ID ASC, Extender_Enquiry_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Enquiry_ID, Extender_Window_Name, Extender_Window_ID, PRODID, Long_Form_Name, Long_Window_Name, Extender_Hot_Key, Read_Only_CB, Use_Alternate_Key_CB, Extender_Key_Fields_1, Extender_Key_Fields_2, Extender_Key_Fields_3, Extender_Key_Fields_4, Extender_Key_Fields_5, Extender_Key_Windows_1, Extender_Key_Windows_2, Extender_Key_Windows_3, Extender_Key_Windows_4, Extender_Key_Windows_5, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, Display_In_Tab, Tab_Name, DEX_ROW_ID FROM .EXT20120 WHERE Extender_Window_ID BETWEEN @Extender_Window_ID_RS AND @Extender_Window_ID_RE AND Extender_Enquiry_ID BETWEEN @Extender_Enquiry_ID_RS AND @Extender_Enquiry_ID_RE AND ( Extender_Window_ID = @Extender_Window_ID AND Extender_Enquiry_ID > @Extender_Enquiry_ID OR Extender_Window_ID > @Extender_Window_ID ) ORDER BY Extender_Window_ID ASC, Extender_Enquiry_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20120N_2] TO [DYNGRP]
GO
