SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportRolesSS_1] (@PRODNAME char(31), @Business_Desk_Report_Nam char(51), @Report_Option char(51), @BP_Role char(51)) AS  set nocount on SELECT TOP 1  Business_Desk_Report_Nam, PRODNAME, Report_Option, BP_Role, MKTOPROC, DEX_ROW_ID FROM .ReportRoles WHERE PRODNAME = @PRODNAME AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND Report_Option = @Report_Option AND BP_Role = @BP_Role ORDER BY PRODNAME ASC, Business_Desk_Report_Nam ASC, Report_Option ASC, BP_Role ASC set nocount off  
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportRolesSS_1] TO [DYNGRP]
GO
