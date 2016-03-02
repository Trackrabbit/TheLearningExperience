SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20201SS_1] (@Extender_Form_ID char(15), @Window_Number smallint) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Form_ID, Window_Number, Extra_Window_Type, WINNAME, Button_Prompts_1, Button_Prompts_2, Button_Prompts_3, Extender_Field_IDs_1, Extender_Field_IDs_2, Extender_Field_IDs_3, Extender_Field_IDs_4, Extender_Field_IDs_5, Extender_Field_IDs_6, Extender_Field_IDs_7, Extender_Field_IDs_8, Extender_Field_IDs_9, Extender_Field_IDs_10, Extender_Field_IDs_11, Extender_Field_IDs_12, Extender_Field_IDs_13, Extender_Field_IDs_14, Extender_Field_IDs_15, Hidden_window, DEX_ROW_ID FROM .EXT20201 WHERE Extender_Form_ID = @Extender_Form_ID AND Window_Number = @Window_Number ORDER BY Extender_Form_ID ASC, Window_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20201SS_1] TO [DYNGRP]
GO
