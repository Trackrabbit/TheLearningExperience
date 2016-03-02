SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20401SS_1] (@Extender_Event_ID int, @Action_Number smallint) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Event_ID, Action_Number, Action_Order, Action_Type, Action_Description, Extender_Template_ID, fileName, Extender_Form_ID, PRODID, INTERID, Long_Form_Name, Long_Window_Name, Warning_Type, Warning_Prompt, Button_Prompts_1, Button_Prompts_2, Button_Prompts_3, Button_Actions_1, Button_Actions_2, Button_Actions_3, Run_Action_Number, Run_Event_ID, DEX_ROW_ID, TXTFIELD FROM .EXT20401 WHERE Extender_Event_ID = @Extender_Event_ID AND Action_Number = @Action_Number ORDER BY Extender_Event_ID ASC, Action_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20401SS_1] TO [DYNGRP]
GO
