SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20201L_1] (@Extender_Form_ID_RS char(15), @Window_Number_RS smallint, @Extender_Form_ID_RE char(15), @Window_Number_RE smallint) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Form_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Form_ID, Window_Number, Extra_Window_Type, WINNAME, Button_Prompts_1, Button_Prompts_2, Button_Prompts_3, Extender_Field_IDs_1, Extender_Field_IDs_2, Extender_Field_IDs_3, Extender_Field_IDs_4, Extender_Field_IDs_5, Extender_Field_IDs_6, Extender_Field_IDs_7, Extender_Field_IDs_8, Extender_Field_IDs_9, Extender_Field_IDs_10, Extender_Field_IDs_11, Extender_Field_IDs_12, Extender_Field_IDs_13, Extender_Field_IDs_14, Extender_Field_IDs_15, Hidden_window, DEX_ROW_ID FROM .EXT20201 ORDER BY Extender_Form_ID DESC, Window_Number DESC END ELSE IF @Extender_Form_ID_RS = @Extender_Form_ID_RE BEGIN SELECT TOP 25  Extender_Form_ID, Window_Number, Extra_Window_Type, WINNAME, Button_Prompts_1, Button_Prompts_2, Button_Prompts_3, Extender_Field_IDs_1, Extender_Field_IDs_2, Extender_Field_IDs_3, Extender_Field_IDs_4, Extender_Field_IDs_5, Extender_Field_IDs_6, Extender_Field_IDs_7, Extender_Field_IDs_8, Extender_Field_IDs_9, Extender_Field_IDs_10, Extender_Field_IDs_11, Extender_Field_IDs_12, Extender_Field_IDs_13, Extender_Field_IDs_14, Extender_Field_IDs_15, Hidden_window, DEX_ROW_ID FROM .EXT20201 WHERE Extender_Form_ID = @Extender_Form_ID_RS AND Window_Number BETWEEN @Window_Number_RS AND @Window_Number_RE ORDER BY Extender_Form_ID DESC, Window_Number DESC END ELSE BEGIN SELECT TOP 25  Extender_Form_ID, Window_Number, Extra_Window_Type, WINNAME, Button_Prompts_1, Button_Prompts_2, Button_Prompts_3, Extender_Field_IDs_1, Extender_Field_IDs_2, Extender_Field_IDs_3, Extender_Field_IDs_4, Extender_Field_IDs_5, Extender_Field_IDs_6, Extender_Field_IDs_7, Extender_Field_IDs_8, Extender_Field_IDs_9, Extender_Field_IDs_10, Extender_Field_IDs_11, Extender_Field_IDs_12, Extender_Field_IDs_13, Extender_Field_IDs_14, Extender_Field_IDs_15, Hidden_window, DEX_ROW_ID FROM .EXT20201 WHERE Extender_Form_ID BETWEEN @Extender_Form_ID_RS AND @Extender_Form_ID_RE AND Window_Number BETWEEN @Window_Number_RS AND @Window_Number_RE ORDER BY Extender_Form_ID DESC, Window_Number DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20201L_1] TO [DYNGRP]
GO
