SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportRolesPendingF_6] (@DEX_ROW_ID_RS int, @DEX_ROW_ID_RE int) AS  set nocount on IF @DEX_ROW_ID_RS IS NULL BEGIN SELECT TOP 25  Identity_Column, BP_GUID, BP_Role, MKTOPROC, Business_Desk_Report_Nam, PRODID, Report_Option, RPTGRIND, UserIDTime, DEX_ROW_ID FROM .ReportRolesPending ORDER BY DEX_ROW_ID ASC END ELSE IF @DEX_ROW_ID_RS = @DEX_ROW_ID_RE BEGIN SELECT TOP 25  Identity_Column, BP_GUID, BP_Role, MKTOPROC, Business_Desk_Report_Nam, PRODID, Report_Option, RPTGRIND, UserIDTime, DEX_ROW_ID FROM .ReportRolesPending WHERE DEX_ROW_ID = @DEX_ROW_ID_RS ORDER BY DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Identity_Column, BP_GUID, BP_Role, MKTOPROC, Business_Desk_Report_Nam, PRODID, Report_Option, RPTGRIND, UserIDTime, DEX_ROW_ID FROM .ReportRolesPending WHERE DEX_ROW_ID BETWEEN @DEX_ROW_ID_RS AND @DEX_ROW_ID_RE ORDER BY DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportRolesPendingF_6] TO [DYNGRP]
GO
