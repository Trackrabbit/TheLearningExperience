SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00203F_1] (@EMPLOYID_RS char(15), @Time_on_Behalf_Code_RS char(15), @Employee_ID_Assigned_RS char(15), @EMPLOYID_RE char(15), @Time_on_Behalf_Code_RE char(15), @Employee_ID_Assigned_RE char(15)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, Time_on_Behalf_Code, Employee_ID_Assigned, DEX_ROW_ID FROM .UPR00203 ORDER BY EMPLOYID ASC, Time_on_Behalf_Code ASC, Employee_ID_Assigned ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, Time_on_Behalf_Code, Employee_ID_Assigned, DEX_ROW_ID FROM .UPR00203 WHERE EMPLOYID = @EMPLOYID_RS AND Time_on_Behalf_Code BETWEEN @Time_on_Behalf_Code_RS AND @Time_on_Behalf_Code_RE AND Employee_ID_Assigned BETWEEN @Employee_ID_Assigned_RS AND @Employee_ID_Assigned_RE ORDER BY EMPLOYID ASC, Time_on_Behalf_Code ASC, Employee_ID_Assigned ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, Time_on_Behalf_Code, Employee_ID_Assigned, DEX_ROW_ID FROM .UPR00203 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND Time_on_Behalf_Code BETWEEN @Time_on_Behalf_Code_RS AND @Time_on_Behalf_Code_RE AND Employee_ID_Assigned BETWEEN @Employee_ID_Assigned_RS AND @Employee_ID_Assigned_RE ORDER BY EMPLOYID ASC, Time_on_Behalf_Code ASC, Employee_ID_Assigned ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00203F_1] TO [DYNGRP]
GO
