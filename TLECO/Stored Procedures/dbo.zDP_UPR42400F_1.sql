SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42400F_1] (@Restriction_Code_RS char(15), @Restriction_Code_RE char(15)) AS  set nocount on IF @Restriction_Code_RS IS NULL BEGIN SELECT TOP 25  Restriction_Code, DSCRIPTN, Per_Day_CB, Per_Pay_Period_CB, Required_StartStop_CB, Department_CB, Position_CB, State_Tax_CB, Local_Tax_CB, Shift_CB, Days_Worked_CB, Weeks_Worked_CB, Notes_CB, Require_Electronic_Signa, Per_Day_Max, Per_Period_Min, Per_Period_Max, DEX_ROW_ID FROM .UPR42400 ORDER BY Restriction_Code ASC END ELSE IF @Restriction_Code_RS = @Restriction_Code_RE BEGIN SELECT TOP 25  Restriction_Code, DSCRIPTN, Per_Day_CB, Per_Pay_Period_CB, Required_StartStop_CB, Department_CB, Position_CB, State_Tax_CB, Local_Tax_CB, Shift_CB, Days_Worked_CB, Weeks_Worked_CB, Notes_CB, Require_Electronic_Signa, Per_Day_Max, Per_Period_Min, Per_Period_Max, DEX_ROW_ID FROM .UPR42400 WHERE Restriction_Code = @Restriction_Code_RS ORDER BY Restriction_Code ASC END ELSE BEGIN SELECT TOP 25  Restriction_Code, DSCRIPTN, Per_Day_CB, Per_Pay_Period_CB, Required_StartStop_CB, Department_CB, Position_CB, State_Tax_CB, Local_Tax_CB, Shift_CB, Days_Worked_CB, Weeks_Worked_CB, Notes_CB, Require_Electronic_Signa, Per_Day_Max, Per_Period_Min, Per_Period_Max, DEX_ROW_ID FROM .UPR42400 WHERE Restriction_Code BETWEEN @Restriction_Code_RS AND @Restriction_Code_RE ORDER BY Restriction_Code ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42400F_1] TO [DYNGRP]
GO
