SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00200F_2] (@Time_on_Behalf_Code_RS char(15), @EMPLOYID_RS char(15), @Time_on_Behalf_Code_RE char(15), @EMPLOYID_RE char(15)) AS  set nocount on IF @Time_on_Behalf_Code_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, Time_on_Behalf_Code, INACTIVE, Admin_Code, DEX_ROW_ID FROM .UPR00200 ORDER BY Time_on_Behalf_Code ASC, EMPLOYID ASC END ELSE IF @Time_on_Behalf_Code_RS = @Time_on_Behalf_Code_RE BEGIN SELECT TOP 25  EMPLOYID, Time_on_Behalf_Code, INACTIVE, Admin_Code, DEX_ROW_ID FROM .UPR00200 WHERE Time_on_Behalf_Code = @Time_on_Behalf_Code_RS AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE ORDER BY Time_on_Behalf_Code ASC, EMPLOYID ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, Time_on_Behalf_Code, INACTIVE, Admin_Code, DEX_ROW_ID FROM .UPR00200 WHERE Time_on_Behalf_Code BETWEEN @Time_on_Behalf_Code_RS AND @Time_on_Behalf_Code_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE ORDER BY Time_on_Behalf_Code ASC, EMPLOYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00200F_2] TO [DYNGRP]
GO
