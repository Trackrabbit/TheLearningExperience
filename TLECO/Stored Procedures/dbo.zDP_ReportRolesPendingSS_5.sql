SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportRolesPendingSS_5] (@Business_Desk_Report_Nam char(51), @PRODID smallint, @Report_Option char(51), @RPTGRIND smallint) AS  set nocount on SELECT TOP 1  Identity_Column, BP_GUID, BP_Role, MKTOPROC, Business_Desk_Report_Nam, PRODID, Report_Option, RPTGRIND, UserIDTime, DEX_ROW_ID FROM .ReportRolesPending WHERE Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND PRODID = @PRODID AND Report_Option = @Report_Option AND RPTGRIND = @RPTGRIND ORDER BY Business_Desk_Report_Nam ASC, PRODID ASC, Report_Option ASC, RPTGRIND ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportRolesPendingSS_5] TO [DYNGRP]
GO
