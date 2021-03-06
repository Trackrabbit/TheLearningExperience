SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00201L_1] (@EMPLOYID_RS char(15), @Time_on_Behalf_Code_RS char(15), @DEPRTMNT_RS char(7), @EMPLOYID_RE char(15), @Time_on_Behalf_Code_RE char(15), @DEPRTMNT_RE char(7)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, Time_on_Behalf_Code, DEPRTMNT, DEX_ROW_ID FROM .UPR00201 ORDER BY EMPLOYID DESC, Time_on_Behalf_Code DESC, DEPRTMNT DESC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, Time_on_Behalf_Code, DEPRTMNT, DEX_ROW_ID FROM .UPR00201 WHERE EMPLOYID = @EMPLOYID_RS AND Time_on_Behalf_Code BETWEEN @Time_on_Behalf_Code_RS AND @Time_on_Behalf_Code_RE AND DEPRTMNT BETWEEN @DEPRTMNT_RS AND @DEPRTMNT_RE ORDER BY EMPLOYID DESC, Time_on_Behalf_Code DESC, DEPRTMNT DESC END ELSE BEGIN SELECT TOP 25  EMPLOYID, Time_on_Behalf_Code, DEPRTMNT, DEX_ROW_ID FROM .UPR00201 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND Time_on_Behalf_Code BETWEEN @Time_on_Behalf_Code_RS AND @Time_on_Behalf_Code_RE AND DEPRTMNT BETWEEN @DEPRTMNT_RS AND @DEPRTMNT_RE ORDER BY EMPLOYID DESC, Time_on_Behalf_Code DESC, DEPRTMNT DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00201L_1] TO [DYNGRP]
GO
