SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportRolesPendingL_2] (@BP_Role_RS char(51), @BP_Role_RE char(51)) AS  set nocount on IF @BP_Role_RS IS NULL BEGIN SELECT TOP 25  Identity_Column, BP_GUID, BP_Role, MKTOPROC, Business_Desk_Report_Nam, PRODID, Report_Option, RPTGRIND, UserIDTime, DEX_ROW_ID FROM .ReportRolesPending ORDER BY BP_Role DESC, DEX_ROW_ID DESC END ELSE IF @BP_Role_RS = @BP_Role_RE BEGIN SELECT TOP 25  Identity_Column, BP_GUID, BP_Role, MKTOPROC, Business_Desk_Report_Nam, PRODID, Report_Option, RPTGRIND, UserIDTime, DEX_ROW_ID FROM .ReportRolesPending WHERE BP_Role = @BP_Role_RS ORDER BY BP_Role DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  Identity_Column, BP_GUID, BP_Role, MKTOPROC, Business_Desk_Report_Nam, PRODID, Report_Option, RPTGRIND, UserIDTime, DEX_ROW_ID FROM .ReportRolesPending WHERE BP_Role BETWEEN @BP_Role_RS AND @BP_Role_RE ORDER BY BP_Role DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportRolesPendingL_2] TO [DYNGRP]
GO
