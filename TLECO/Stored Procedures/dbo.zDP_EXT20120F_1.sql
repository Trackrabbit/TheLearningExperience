SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20120F_1] (@Extender_Enquiry_ID_RS int, @Extender_Enquiry_ID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Enquiry_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Enquiry_ID, Extender_Window_Name, Extender_Window_ID, PRODID, Long_Form_Name, Long_Window_Name, Extender_Hot_Key, Read_Only_CB, Use_Alternate_Key_CB, Extender_Key_Fields_1, Extender_Key_Fields_2, Extender_Key_Fields_3, Extender_Key_Fields_4, Extender_Key_Fields_5, Extender_Key_Windows_1, Extender_Key_Windows_2, Extender_Key_Windows_3, Extender_Key_Windows_4, Extender_Key_Windows_5, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, Display_In_Tab, Tab_Name, DEX_ROW_ID FROM .EXT20120 ORDER BY Extender_Enquiry_ID ASC END ELSE IF @Extender_Enquiry_ID_RS = @Extender_Enquiry_ID_RE BEGIN SELECT TOP 25  Extender_Enquiry_ID, Extender_Window_Name, Extender_Window_ID, PRODID, Long_Form_Name, Long_Window_Name, Extender_Hot_Key, Read_Only_CB, Use_Alternate_Key_CB, Extender_Key_Fields_1, Extender_Key_Fields_2, Extender_Key_Fields_3, Extender_Key_Fields_4, Extender_Key_Fields_5, Extender_Key_Windows_1, Extender_Key_Windows_2, Extender_Key_Windows_3, Extender_Key_Windows_4, Extender_Key_Windows_5, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, Display_In_Tab, Tab_Name, DEX_ROW_ID FROM .EXT20120 WHERE Extender_Enquiry_ID = @Extender_Enquiry_ID_RS ORDER BY Extender_Enquiry_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Enquiry_ID, Extender_Window_Name, Extender_Window_ID, PRODID, Long_Form_Name, Long_Window_Name, Extender_Hot_Key, Read_Only_CB, Use_Alternate_Key_CB, Extender_Key_Fields_1, Extender_Key_Fields_2, Extender_Key_Fields_3, Extender_Key_Fields_4, Extender_Key_Fields_5, Extender_Key_Windows_1, Extender_Key_Windows_2, Extender_Key_Windows_3, Extender_Key_Windows_4, Extender_Key_Windows_5, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, Display_In_Tab, Tab_Name, DEX_ROW_ID FROM .EXT20120 WHERE Extender_Enquiry_ID BETWEEN @Extender_Enquiry_ID_RS AND @Extender_Enquiry_ID_RE ORDER BY Extender_Enquiry_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20120F_1] TO [DYNGRP]
GO
