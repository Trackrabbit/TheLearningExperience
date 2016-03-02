SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20200N_1] (@BS int, @Extender_Form_ID char(15), @Extender_Form_ID_RS char(15), @Extender_Form_ID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Form_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Form_ID, Extender_Form_Name, Extender_Form_ID_Prompt, Use_Existing_Lookup, Lookup_Number, Autoincrement, Extender_Description_Pro, Description_Field_Req, Use_Secondary_Key, Extender_Second_Prompt, Extender_Field_IDs_1, Extender_Field_IDs_2, Extender_Field_IDs_3, Extender_Field_IDs_4, Extender_Field_IDs_5, Extender_Field_IDs_6, Extender_Field_IDs_7, Extender_Field_IDs_8, Extender_Field_IDs_9, Extender_Field_IDs_10, Extender_Field_IDs_11, Extender_Field_IDs_12, Extender_Field_IDs_13, Extender_Field_IDs_14, Extender_Field_IDs_15, Extender_Field_IDs_2_1, Extender_Field_IDs_2_2, Extender_Field_IDs_2_3, Extender_Field_IDs_2_4, Extender_Field_IDs_2_5, Extender_Field_IDs_2_6, Extender_Field_IDs_2_7, Extender_Field_IDs_2_8, Extender_Field_IDs_2_9, Extender_Field_IDs_2_10, Extender_Field_IDs_2_11, Extender_Field_IDs_2_12, Extender_Field_IDs_2_13, Extender_Field_IDs_2_14, Extender_Field_IDs_2_15, Detail_Field_IDs_1, Detail_Field_IDs_2, Detail_Field_IDs_3, Detail_Field_IDs_4, Detail_Field_IDs_5, Detail_Field_IDs_6, Detail_Field_IDs_7, Detail_Field_IDs_8, Detail_Field_IDs_9, Detail_Field_IDs_10, Detail_Field_IDs_2_1, Detail_Field_IDs_2_2, Detail_Field_IDs_2_3, Detail_Field_IDs_2_4, Detail_Field_IDs_2_5, Detail_Field_IDs_2_6, Detail_Field_IDs_2_7, Detail_Field_IDs_2_8, Detail_Field_IDs_2_9, Detail_Field_IDs_2_10, Read_Only_CB, Add_Extender_Form_Detail, Show_Total_CB, Total_Field_ID, Multicurrency_CB, Currency_Field_ID, RATETPID, Currency_Default_FieldID, Currency_Default_Method, Default_From_Field_ID, Extender_Template_ID, Template_SelectionMethod, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20200 WHERE ( Extender_Form_ID > @Extender_Form_ID ) ORDER BY Extender_Form_ID ASC END ELSE IF @Extender_Form_ID_RS = @Extender_Form_ID_RE BEGIN SELECT TOP 25  Extender_Form_ID, Extender_Form_Name, Extender_Form_ID_Prompt, Use_Existing_Lookup, Lookup_Number, Autoincrement, Extender_Description_Pro, Description_Field_Req, Use_Secondary_Key, Extender_Second_Prompt, Extender_Field_IDs_1, Extender_Field_IDs_2, Extender_Field_IDs_3, Extender_Field_IDs_4, Extender_Field_IDs_5, Extender_Field_IDs_6, Extender_Field_IDs_7, Extender_Field_IDs_8, Extender_Field_IDs_9, Extender_Field_IDs_10, Extender_Field_IDs_11, Extender_Field_IDs_12, Extender_Field_IDs_13, Extender_Field_IDs_14, Extender_Field_IDs_15, Extender_Field_IDs_2_1, Extender_Field_IDs_2_2, Extender_Field_IDs_2_3, Extender_Field_IDs_2_4, Extender_Field_IDs_2_5, Extender_Field_IDs_2_6, Extender_Field_IDs_2_7, Extender_Field_IDs_2_8, Extender_Field_IDs_2_9, Extender_Field_IDs_2_10, Extender_Field_IDs_2_11, Extender_Field_IDs_2_12, Extender_Field_IDs_2_13, Extender_Field_IDs_2_14, Extender_Field_IDs_2_15, Detail_Field_IDs_1, Detail_Field_IDs_2, Detail_Field_IDs_3, Detail_Field_IDs_4, Detail_Field_IDs_5, Detail_Field_IDs_6, Detail_Field_IDs_7, Detail_Field_IDs_8, Detail_Field_IDs_9, Detail_Field_IDs_10, Detail_Field_IDs_2_1, Detail_Field_IDs_2_2, Detail_Field_IDs_2_3, Detail_Field_IDs_2_4, Detail_Field_IDs_2_5, Detail_Field_IDs_2_6, Detail_Field_IDs_2_7, Detail_Field_IDs_2_8, Detail_Field_IDs_2_9, Detail_Field_IDs_2_10, Read_Only_CB, Add_Extender_Form_Detail, Show_Total_CB, Total_Field_ID, Multicurrency_CB, Currency_Field_ID, RATETPID, Currency_Default_FieldID, Currency_Default_Method, Default_From_Field_ID, Extender_Template_ID, Template_SelectionMethod, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20200 WHERE Extender_Form_ID = @Extender_Form_ID_RS AND ( Extender_Form_ID > @Extender_Form_ID ) ORDER BY Extender_Form_ID ASC END ELSE BEGIN SELECT TOP 25  Extender_Form_ID, Extender_Form_Name, Extender_Form_ID_Prompt, Use_Existing_Lookup, Lookup_Number, Autoincrement, Extender_Description_Pro, Description_Field_Req, Use_Secondary_Key, Extender_Second_Prompt, Extender_Field_IDs_1, Extender_Field_IDs_2, Extender_Field_IDs_3, Extender_Field_IDs_4, Extender_Field_IDs_5, Extender_Field_IDs_6, Extender_Field_IDs_7, Extender_Field_IDs_8, Extender_Field_IDs_9, Extender_Field_IDs_10, Extender_Field_IDs_11, Extender_Field_IDs_12, Extender_Field_IDs_13, Extender_Field_IDs_14, Extender_Field_IDs_15, Extender_Field_IDs_2_1, Extender_Field_IDs_2_2, Extender_Field_IDs_2_3, Extender_Field_IDs_2_4, Extender_Field_IDs_2_5, Extender_Field_IDs_2_6, Extender_Field_IDs_2_7, Extender_Field_IDs_2_8, Extender_Field_IDs_2_9, Extender_Field_IDs_2_10, Extender_Field_IDs_2_11, Extender_Field_IDs_2_12, Extender_Field_IDs_2_13, Extender_Field_IDs_2_14, Extender_Field_IDs_2_15, Detail_Field_IDs_1, Detail_Field_IDs_2, Detail_Field_IDs_3, Detail_Field_IDs_4, Detail_Field_IDs_5, Detail_Field_IDs_6, Detail_Field_IDs_7, Detail_Field_IDs_8, Detail_Field_IDs_9, Detail_Field_IDs_10, Detail_Field_IDs_2_1, Detail_Field_IDs_2_2, Detail_Field_IDs_2_3, Detail_Field_IDs_2_4, Detail_Field_IDs_2_5, Detail_Field_IDs_2_6, Detail_Field_IDs_2_7, Detail_Field_IDs_2_8, Detail_Field_IDs_2_9, Detail_Field_IDs_2_10, Read_Only_CB, Add_Extender_Form_Detail, Show_Total_CB, Total_Field_ID, Multicurrency_CB, Currency_Field_ID, RATETPID, Currency_Default_FieldID, Currency_Default_Method, Default_From_Field_ID, Extender_Template_ID, Template_SelectionMethod, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID FROM .EXT20200 WHERE Extender_Form_ID BETWEEN @Extender_Form_ID_RS AND @Extender_Form_ID_RE AND ( Extender_Form_ID > @Extender_Form_ID ) ORDER BY Extender_Form_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20200N_1] TO [DYNGRP]
GO
