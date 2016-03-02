SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB70100SS_1] (@Action_Type smallint, @Parameter_Name char(31)) AS set nocount on SELECT TOP 1  Action_Type, Parameter_Name, Action_Parameter_Type, Required_CB_1, Required_CB_2, Required_CB_3, Required_CB_4, Required_CB_5, Required_CB_6, Required_CB_7, Required_CB_8, Required_CB_9, Required_CB_10, Required_CB_11, Required_CB_12, Required_CB_13, Required_CB_14, Required_CB_15, Required_CB_16, Required_CB_17, Required_CB_18, Required_CB_19, Required_CB_20, DEX_ROW_ID FROM .NLB70100 WHERE Action_Type = @Action_Type AND Parameter_Name = @Parameter_Name ORDER BY Action_Type ASC, Parameter_Name ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB70100SS_1] TO [DYNGRP]
GO
