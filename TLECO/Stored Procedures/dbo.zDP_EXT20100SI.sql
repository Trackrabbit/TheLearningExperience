SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20100SI] (@Extender_Window_ID char(15), @Extender_Window_Name char(65), @Extender_Window_Type smallint, @PRODID smallint, @Long_Form_Name char(255), @Long_Window_Name char(101), @Extender_Key_Windows_1 char(101), @Extender_Key_Windows_2 char(101), @Extender_Key_Windows_3 char(101), @Extender_Key_Windows_4 char(101), @Extender_Key_Windows_5 char(101), @Extender_Key_Fields_1 char(101), @Extender_Key_Fields_2 char(101), @Extender_Key_Fields_3 char(101), @Extender_Key_Fields_4 char(101), @Extender_Key_Fields_5 char(101), @Extender_Field_IDs_1 int, @Extender_Field_IDs_2 int, @Extender_Field_IDs_3 int, @Extender_Field_IDs_4 int, @Extender_Field_IDs_5 int, @Extender_Field_IDs_6 int, @Extender_Field_IDs_7 int, @Extender_Field_IDs_8 int, @Extender_Field_IDs_9 int, @Extender_Field_IDs_10 int, @Extender_Field_IDs_11 int, @Extender_Field_IDs_12 int, @Extender_Field_IDs_13 int, @Extender_Field_IDs_14 int, @Extender_Field_IDs_15 int, @AddExtenderWindowDetails tinyint, @AddExtenderWindowNotes tinyint, @Detail_Field_IDs_1 int, @Detail_Field_IDs_2 int, @Detail_Field_IDs_3 int, @Detail_Field_IDs_4 int, @Detail_Field_IDs_5 int, @Detail_Field_IDs_6 int, @Detail_Field_IDs_7 int, @Detail_Field_IDs_8 int, @Detail_Field_IDs_9 int, @Detail_Field_IDs_10 int, @Detail_Field_IDs_2_1 int, @Detail_Field_IDs_2_2 int, @Detail_Field_IDs_2_3 int, @Detail_Field_IDs_2_4 int, @Detail_Field_IDs_2_5 int, @Detail_Field_IDs_2_6 int, @Detail_Field_IDs_2_7 int, @Detail_Field_IDs_2_8 int, @Detail_Field_IDs_2_9 int, @Detail_Field_IDs_2_10 int, @Show_Total_CB tinyint, @Total_Field_ID int, @Read_Only_CB tinyint, @Display_In_Tab tinyint, @Tab_Name char(51), @PT_Open_Method1 smallint, @Auto_Open tinyint, @Auto_Close tinyint, @Extender_Hot_Key char(1), @Long_Field_Name char(101), @Extender_Template_ID int, @Template_SelectionMethod smallint, @Special_Case_Number smallint, @CREATDDT datetime, @CRUSRID char(15), @MODIFDT datetime, @MDFUSRID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20100 (Extender_Window_ID, Extender_Window_Name, Extender_Window_Type, PRODID, Long_Form_Name, Long_Window_Name, Extender_Key_Windows_1, Extender_Key_Windows_2, Extender_Key_Windows_3, Extender_Key_Windows_4, Extender_Key_Windows_5, Extender_Key_Fields_1, Extender_Key_Fields_2, Extender_Key_Fields_3, Extender_Key_Fields_4, Extender_Key_Fields_5, Extender_Field_IDs_1, Extender_Field_IDs_2, Extender_Field_IDs_3, Extender_Field_IDs_4, Extender_Field_IDs_5, Extender_Field_IDs_6, Extender_Field_IDs_7, Extender_Field_IDs_8, Extender_Field_IDs_9, Extender_Field_IDs_10, Extender_Field_IDs_11, Extender_Field_IDs_12, Extender_Field_IDs_13, Extender_Field_IDs_14, Extender_Field_IDs_15, AddExtenderWindowDetails, AddExtenderWindowNotes, Detail_Field_IDs_1, Detail_Field_IDs_2, Detail_Field_IDs_3, Detail_Field_IDs_4, Detail_Field_IDs_5, Detail_Field_IDs_6, Detail_Field_IDs_7, Detail_Field_IDs_8, Detail_Field_IDs_9, Detail_Field_IDs_10, Detail_Field_IDs_2_1, Detail_Field_IDs_2_2, Detail_Field_IDs_2_3, Detail_Field_IDs_2_4, Detail_Field_IDs_2_5, Detail_Field_IDs_2_6, Detail_Field_IDs_2_7, Detail_Field_IDs_2_8, Detail_Field_IDs_2_9, Detail_Field_IDs_2_10, Show_Total_CB, Total_Field_ID, Read_Only_CB, Display_In_Tab, Tab_Name, PT_Open_Method1, Auto_Open, Auto_Close, Extender_Hot_Key, Long_Field_Name, Extender_Template_ID, Template_SelectionMethod, Special_Case_Number, CREATDDT, CRUSRID, MODIFDT, MDFUSRID) VALUES ( @Extender_Window_ID, @Extender_Window_Name, @Extender_Window_Type, @PRODID, @Long_Form_Name, @Long_Window_Name, @Extender_Key_Windows_1, @Extender_Key_Windows_2, @Extender_Key_Windows_3, @Extender_Key_Windows_4, @Extender_Key_Windows_5, @Extender_Key_Fields_1, @Extender_Key_Fields_2, @Extender_Key_Fields_3, @Extender_Key_Fields_4, @Extender_Key_Fields_5, @Extender_Field_IDs_1, @Extender_Field_IDs_2, @Extender_Field_IDs_3, @Extender_Field_IDs_4, @Extender_Field_IDs_5, @Extender_Field_IDs_6, @Extender_Field_IDs_7, @Extender_Field_IDs_8, @Extender_Field_IDs_9, @Extender_Field_IDs_10, @Extender_Field_IDs_11, @Extender_Field_IDs_12, @Extender_Field_IDs_13, @Extender_Field_IDs_14, @Extender_Field_IDs_15, @AddExtenderWindowDetails, @AddExtenderWindowNotes, @Detail_Field_IDs_1, @Detail_Field_IDs_2, @Detail_Field_IDs_3, @Detail_Field_IDs_4, @Detail_Field_IDs_5, @Detail_Field_IDs_6, @Detail_Field_IDs_7, @Detail_Field_IDs_8, @Detail_Field_IDs_9, @Detail_Field_IDs_10, @Detail_Field_IDs_2_1, @Detail_Field_IDs_2_2, @Detail_Field_IDs_2_3, @Detail_Field_IDs_2_4, @Detail_Field_IDs_2_5, @Detail_Field_IDs_2_6, @Detail_Field_IDs_2_7, @Detail_Field_IDs_2_8, @Detail_Field_IDs_2_9, @Detail_Field_IDs_2_10, @Show_Total_CB, @Total_Field_ID, @Read_Only_CB, @Display_In_Tab, @Tab_Name, @PT_Open_Method1, @Auto_Open, @Auto_Close, @Extender_Hot_Key, @Long_Field_Name, @Extender_Template_ID, @Template_SelectionMethod, @Special_Case_Number, @CREATDDT, @CRUSRID, @MODIFDT, @MDFUSRID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20100SI] TO [DYNGRP]
GO