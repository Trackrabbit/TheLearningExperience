SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportRolesPendingSS_3] (@Identity_Column int) AS  set nocount on SELECT TOP 1  Identity_Column, BP_GUID, BP_Role, MKTOPROC, Business_Desk_Report_Nam, PRODID, Report_Option, RPTGRIND, UserIDTime, DEX_ROW_ID FROM .ReportRolesPending WHERE Identity_Column = @Identity_Column ORDER BY Identity_Column ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportRolesPendingSS_3] TO [DYNGRP]
GO
