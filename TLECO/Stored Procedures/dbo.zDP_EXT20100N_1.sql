SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20100N_1] (@BS int, @Extender_Window_ID char(15), @Extender_Window_ID_RS char(15), @Extender_Window_ID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Window_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Window_ID, Extender_Window_Name, Extender_Window_Type, PRODID, Long_Form_Name, Long_Window_Name, Extender_Key_Windows_1, Extender_Key_Windows_2, Extender_Key_Windows_3, Extender_Key_Windows_4, Extender_Key_Windows_5, Extender_Key_Fields_1, Extender_Key_Fields_2, Extender_Key_Fields_3, Extender_Key_Fields_4, Extender_Key_Fields_5, Extender_Field_IDs_1, Extender_Field_IDs_2, Extender_Field_IDs_3, Extender_Field_IDs_4, Extender_Field_IDs_5, Extender_Field_IDs_6, Extender_Field_IDs_7, Extender_Field_IDs_8, Extender_Field_IDs_9, Extender_Field_IDs_10, Extender_Field_IDs_11, Extender_Field_IDs_12, Extender_Field_IDs_13, Extender_Field_IDs_14, Extender_Field_IDs_15, AddExtenderWindowDetails, AddExtenderWindowNotes, Detail_Field_IDs_1, Detail_Field_IDs_2, Detail_Field_IDs_3, Detail_Field_IDs_4, Detail_Field_IDs_5, Detail_Field_IDs_6, Detail_Field_IDs_7, Detail_Field_IDs_8, Detail_Field_IDs_9, Detail_Field_IDs_10, Detail_Field_IDs_2_1, Detail_Field_IDs_2_2, Detail_Field_IDs_2_3, Detail_Field_IDs_2_4, Detail_Field_IDs_2_5, Detail_Field_IDs_2_6, Detail_Field_IDs_2_7, Detail_Field_IDs_2_8, Detail_Field_IDs_2_9, Detail_Field_IDs_2_10, Show_Total_CB, Total_Field_ID, Read_Only_CB, Display_In_Tab, Tab_Name, PT_Open_Method1, Auto_Open, Auto_Close, Extender_Hot_Key, Long_Field_Name, Extender_Template_ID, Template_SelectionMethod, Special_Case_Number, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20100 WHERE ( Extender_Window_ID > @Extender_Window_ID ) ORDER BY Extender_Window_ID ASC END ELSE IF @Extender_Window_ID_RS = @Extender_Window_ID_RE BEGIN SELECT TOP 25  Extender_Window_ID, Extender_Window_Name, Extender_Window_Type, PRODID, Long_Form_Name, Long_Window_Name, Extender_Key_Windows_1, Extender_Key_Windows_2, Extender_Key_Windows_3, Extender_Key_Windows_4, Extender_Key_Windows_5, Extender_Key_Fields_1, Extender_Key_Fields_2, Extender_Key_Fields_3, Extender_Key_Fields_4, Extender_Key_Fields_5, Extender_Field_IDs_1, Extender_Field_IDs_2, Extender_Field_IDs_3, Extender_Field_IDs_4, Extender_Field_IDs_5, Extender_Field_IDs_6, Extender_Field_IDs_7, Extender_Field_IDs_8, Extender_Field_IDs_9, Extender_Field_IDs_10, Extender_Field_IDs_11, Extender_Field_IDs_12, Extender_Field_IDs_13, Extender_Field_IDs_14, Extender_Field_IDs_15, AddExtenderWindowDetails, AddExtenderWindowNotes, Detail_Field_IDs_1, Detail_Field_IDs_2, Detail_Field_IDs_3, Detail_Field_IDs_4, Detail_Field_IDs_5, Detail_Field_IDs_6, Detail_Field_IDs_7, Detail_Field_IDs_8, Detail_Field_IDs_9, Detail_Field_IDs_10, Detail_Field_IDs_2_1, Detail_Field_IDs_2_2, Detail_Field_IDs_2_3, Detail_Field_IDs_2_4, Detail_Field_IDs_2_5, Detail_Field_IDs_2_6, Detail_Field_IDs_2_7, Detail_Field_IDs_2_8, Detail_Field_IDs_2_9, Detail_Field_IDs_2_10, Show_Total_CB, Total_Field_ID, Read_Only_CB, Display_In_Tab, Tab_Name, PT_Open_Method1, Auto_Open, Auto_Close, Extender_Hot_Key, Long_Field_Name, Extender_Template_ID, Template_SelectionMethod, Special_Case_Number, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20100 WHERE Extender_Window_ID = @Extender_Window_ID_RS AND ( Extender_Window_ID > @Extender_Window_ID ) ORDER BY Extender_Window_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Window_ID, Extender_Window_Name, Extender_Window_Type, PRODID, Long_Form_Name, Long_Window_Name, Extender_Key_Windows_1, Extender_Key_Windows_2, Extender_Key_Windows_3, Extender_Key_Windows_4, Extender_Key_Windows_5, Extender_Key_Fields_1, Extender_Key_Fields_2, Extender_Key_Fields_3, Extender_Key_Fields_4, Extender_Key_Fields_5, Extender_Field_IDs_1, Extender_Field_IDs_2, Extender_Field_IDs_3, Extender_Field_IDs_4, Extender_Field_IDs_5, Extender_Field_IDs_6, Extender_Field_IDs_7, Extender_Field_IDs_8, Extender_Field_IDs_9, Extender_Field_IDs_10, Extender_Field_IDs_11, Extender_Field_IDs_12, Extender_Field_IDs_13, Extender_Field_IDs_14, Extender_Field_IDs_15, AddExtenderWindowDetails, AddExtenderWindowNotes, Detail_Field_IDs_1, Detail_Field_IDs_2, Detail_Field_IDs_3, Detail_Field_IDs_4, Detail_Field_IDs_5, Detail_Field_IDs_6, Detail_Field_IDs_7, Detail_Field_IDs_8, Detail_Field_IDs_9, Detail_Field_IDs_10, Detail_Field_IDs_2_1, Detail_Field_IDs_2_2, Detail_Field_IDs_2_3, Detail_Field_IDs_2_4, Detail_Field_IDs_2_5, Detail_Field_IDs_2_6, Detail_Field_IDs_2_7, Detail_Field_IDs_2_8, Detail_Field_IDs_2_9, Detail_Field_IDs_2_10, Show_Total_CB, Total_Field_ID, Read_Only_CB, Display_In_Tab, Tab_Name, PT_Open_Method1, Auto_Open, Auto_Close, Extender_Hot_Key, Long_Field_Name, Extender_Template_ID, Template_SelectionMethod, Special_Case_Number, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20100 WHERE Extender_Window_ID BETWEEN @Extender_Window_ID_RS AND @Extender_Window_ID_RE AND ( Extender_Window_ID > @Extender_Window_ID ) ORDER BY Extender_Window_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20100N_1] TO [DYNGRP]
GO
