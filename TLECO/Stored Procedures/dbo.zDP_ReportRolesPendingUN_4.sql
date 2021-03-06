SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportRolesPendingUN_4] (@BS int, @MKTOPROC tinyint, @MKTOPROC_RS tinyint, @MKTOPROC_RE tinyint) AS  set nocount on IF @MKTOPROC_RS IS NULL BEGIN SELECT TOP 25  Identity_Column, BP_GUID, BP_Role, MKTOPROC, Business_Desk_Report_Nam, PRODID, Report_Option, RPTGRIND, UserIDTime, DEX_ROW_ID FROM .ReportRolesPending WHERE ( MKTOPROC < @MKTOPROC ) ORDER BY MKTOPROC DESC, DEX_ROW_ID ASC END ELSE IF @MKTOPROC_RS = @MKTOPROC_RE BEGIN SELECT TOP 25  Identity_Column, BP_GUID, BP_Role, MKTOPROC, Business_Desk_Report_Nam, PRODID, Report_Option, RPTGRIND, UserIDTime, DEX_ROW_ID FROM .ReportRolesPending WHERE MKTOPROC = @MKTOPROC_RE AND ( MKTOPROC < @MKTOPROC ) ORDER BY MKTOPROC DESC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Identity_Column, BP_GUID, BP_Role, MKTOPROC, Business_Desk_Report_Nam, PRODID, Report_Option, RPTGRIND, UserIDTime, DEX_ROW_ID FROM .ReportRolesPending WHERE MKTOPROC BETWEEN @MKTOPROC_RE AND @MKTOPROC_RS AND ( MKTOPROC < @MKTOPROC ) ORDER BY MKTOPROC DESC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportRolesPendingUN_4] TO [DYNGRP]
GO
