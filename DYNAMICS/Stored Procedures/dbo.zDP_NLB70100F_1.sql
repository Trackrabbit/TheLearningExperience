SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB70100F_1] (@Action_Type_RS smallint, @Parameter_Name_RS char(31), @Action_Type_RE smallint, @Parameter_Name_RE char(31)) AS set nocount on IF @Action_Type_RS IS NULL BEGIN SELECT TOP 25  Action_Type, Parameter_Name, Action_Parameter_Type, Required_CB_1, Required_CB_2, Required_CB_3, Required_CB_4, Required_CB_5, Required_CB_6, Required_CB_7, Required_CB_8, Required_CB_9, Required_CB_10, Required_CB_11, Required_CB_12, Required_CB_13, Required_CB_14, Required_CB_15, Required_CB_16, Required_CB_17, Required_CB_18, Required_CB_19, Required_CB_20, DEX_ROW_ID FROM .NLB70100 ORDER BY Action_Type ASC, Parameter_Name ASC END ELSE IF @Action_Type_RS = @Action_Type_RE BEGIN SELECT TOP 25  Action_Type, Parameter_Name, Action_Parameter_Type, Required_CB_1, Required_CB_2, Required_CB_3, Required_CB_4, Required_CB_5, Required_CB_6, Required_CB_7, Required_CB_8, Required_CB_9, Required_CB_10, Required_CB_11, Required_CB_12, Required_CB_13, Required_CB_14, Required_CB_15, Required_CB_16, Required_CB_17, Required_CB_18, Required_CB_19, Required_CB_20, DEX_ROW_ID FROM .NLB70100 WHERE Action_Type = @Action_Type_RS AND Parameter_Name BETWEEN @Parameter_Name_RS AND @Parameter_Name_RE ORDER BY Action_Type ASC, Parameter_Name ASC END ELSE BEGIN SELECT TOP 25  Action_Type, Parameter_Name, Action_Parameter_Type, Required_CB_1, Required_CB_2, Required_CB_3, Required_CB_4, Required_CB_5, Required_CB_6, Required_CB_7, Required_CB_8, Required_CB_9, Required_CB_10, Required_CB_11, Required_CB_12, Required_CB_13, Required_CB_14, Required_CB_15, Required_CB_16, Required_CB_17, Required_CB_18, Required_CB_19, Required_CB_20, DEX_ROW_ID FROM .NLB70100 WHERE Action_Type BETWEEN @Action_Type_RS AND @Action_Type_RE AND Parameter_Name BETWEEN @Parameter_Name_RS AND @Parameter_Name_RE ORDER BY Action_Type ASC, Parameter_Name ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB70100F_1] TO [DYNGRP]
GO
