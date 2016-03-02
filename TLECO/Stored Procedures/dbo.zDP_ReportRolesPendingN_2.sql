SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportRolesPendingN_2] (@BS int, @BP_Role char(51), @DEX_ROW_ID int, @BP_Role_RS char(51), @BP_Role_RE char(51)) AS  set nocount on IF @BP_Role_RS IS NULL BEGIN SELECT TOP 25  Identity_Column, BP_GUID, BP_Role, MKTOPROC, Business_Desk_Report_Nam, PRODID, Report_Option, RPTGRIND, UserIDTime, DEX_ROW_ID FROM .ReportRolesPending WHERE ( BP_Role = @BP_Role AND DEX_ROW_ID > @DEX_ROW_ID OR BP_Role > @BP_Role ) ORDER BY BP_Role ASC, DEX_ROW_ID ASC END ELSE IF @BP_Role_RS = @BP_Role_RE BEGIN SELECT TOP 25  Identity_Column, BP_GUID, BP_Role, MKTOPROC, Business_Desk_Report_Nam, PRODID, Report_Option, RPTGRIND, UserIDTime, DEX_ROW_ID FROM .ReportRolesPending WHERE BP_Role = @BP_Role_RS AND ( BP_Role = @BP_Role AND DEX_ROW_ID > @DEX_ROW_ID OR BP_Role > @BP_Role ) ORDER BY BP_Role ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Identity_Column, BP_GUID, BP_Role, MKTOPROC, Business_Desk_Report_Nam, PRODID, Report_Option, RPTGRIND, UserIDTime, DEX_ROW_ID FROM .ReportRolesPending WHERE BP_Role BETWEEN @BP_Role_RS AND @BP_Role_RE AND ( BP_Role = @BP_Role AND DEX_ROW_ID > @DEX_ROW_ID OR BP_Role > @BP_Role ) ORDER BY BP_Role ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportRolesPendingN_2] TO [DYNGRP]
GO
