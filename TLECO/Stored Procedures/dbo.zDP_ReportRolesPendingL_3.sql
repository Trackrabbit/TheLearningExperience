SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportRolesPendingL_3] (@Identity_Column_RS int, @Identity_Column_RE int) AS  set nocount on IF @Identity_Column_RS IS NULL BEGIN SELECT TOP 25  Identity_Column, BP_GUID, BP_Role, MKTOPROC, Business_Desk_Report_Nam, PRODID, Report_Option, RPTGRIND, UserIDTime, DEX_ROW_ID FROM .ReportRolesPending ORDER BY Identity_Column DESC, DEX_ROW_ID DESC END ELSE IF @Identity_Column_RS = @Identity_Column_RE BEGIN SELECT TOP 25  Identity_Column, BP_GUID, BP_Role, MKTOPROC, Business_Desk_Report_Nam, PRODID, Report_Option, RPTGRIND, UserIDTime, DEX_ROW_ID FROM .ReportRolesPending WHERE Identity_Column = @Identity_Column_RS ORDER BY Identity_Column DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  Identity_Column, BP_GUID, BP_Role, MKTOPROC, Business_Desk_Report_Nam, PRODID, Report_Option, RPTGRIND, UserIDTime, DEX_ROW_ID FROM .ReportRolesPending WHERE Identity_Column BETWEEN @Identity_Column_RS AND @Identity_Column_RE ORDER BY Identity_Column DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportRolesPendingL_3] TO [DYNGRP]
GO
