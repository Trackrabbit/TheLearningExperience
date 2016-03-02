SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SY40800SS_1] (@SITENAME char(81)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  SITENAME, Report_Server_URL, System_Level_Reports, SrsServerMode, SrsReportServerUrl, SrsReportManagerUrl, SrsSharePointSite, SrsReportLibrary, SRS_Reports_on_Home_Page, ExcelReportLocation, ExcelReportsSystemFolder, ExcelReportsUserFolder, ExcelSharePointSite, ExcelDataConnectionLibra, ExcelReportsLibrary, CrmCredentialsMethod, CrmServiceUrl, SrsTenant, MR_ServiceUrl, MR_DesignerAppPath, DEX_ROW_ID FROM .SY40800 WHERE SITENAME = @SITENAME ORDER BY SITENAME ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40800SS_1] TO [DYNGRP]
GO
