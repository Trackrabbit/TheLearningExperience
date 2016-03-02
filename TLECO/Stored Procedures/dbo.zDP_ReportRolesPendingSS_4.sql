SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportRolesPendingSS_4] (@MKTOPROC tinyint) AS  set nocount on SELECT TOP 1  Identity_Column, BP_GUID, BP_Role, MKTOPROC, Business_Desk_Report_Nam, PRODID, Report_Option, RPTGRIND, UserIDTime, DEX_ROW_ID FROM .ReportRolesPending WHERE MKTOPROC = @MKTOPROC ORDER BY MKTOPROC DESC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportRolesPendingSS_4] TO [DYNGRP]
GO
