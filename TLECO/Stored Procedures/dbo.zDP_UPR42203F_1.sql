SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42203F_1] (@Time_on_Behalf_Code_RS char(15), @Employee_ID_Assigned_RS char(15), @Time_on_Behalf_Code_RE char(15), @Employee_ID_Assigned_RE char(15)) AS  set nocount on IF @Time_on_Behalf_Code_RS IS NULL BEGIN SELECT TOP 25  Time_on_Behalf_Code, Employee_ID_Assigned, DEX_ROW_ID FROM .UPR42203 ORDER BY Time_on_Behalf_Code ASC, Employee_ID_Assigned ASC END ELSE IF @Time_on_Behalf_Code_RS = @Time_on_Behalf_Code_RE BEGIN SELECT TOP 25  Time_on_Behalf_Code, Employee_ID_Assigned, DEX_ROW_ID FROM .UPR42203 WHERE Time_on_Behalf_Code = @Time_on_Behalf_Code_RS AND Employee_ID_Assigned BETWEEN @Employee_ID_Assigned_RS AND @Employee_ID_Assigned_RE ORDER BY Time_on_Behalf_Code ASC, Employee_ID_Assigned ASC END ELSE BEGIN SELECT TOP 25  Time_on_Behalf_Code, Employee_ID_Assigned, DEX_ROW_ID FROM .UPR42203 WHERE Time_on_Behalf_Code BETWEEN @Time_on_Behalf_Code_RS AND @Time_on_Behalf_Code_RE AND Employee_ID_Assigned BETWEEN @Employee_ID_Assigned_RS AND @Employee_ID_Assigned_RE ORDER BY Time_on_Behalf_Code ASC, Employee_ID_Assigned ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42203F_1] TO [DYNGRP]
GO
