SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportCatalogPendingUN_3] (@BS int, @PRODNAME char(31), @RPTGRIND smallint, @Business_Desk_Report_Nam char(51), @Report_Option char(51), @PRODNAME_RS char(31), @RPTGRIND_RS smallint, @Business_Desk_Report_Nam_RS char(51), @Report_Option_RS char(51), @PRODNAME_RE char(31), @RPTGRIND_RE smallint, @Business_Desk_Report_Nam_RE char(51), @Report_Option_RE char(51)) AS  set nocount on IF @PRODNAME_RS IS NULL BEGIN SELECT TOP 25  Business_Desk_Report_Nam, Report_Option, Last_Date_Published, DSCRIPTN, MKDTOPST, Identity_Column, PRODNAME, ListviewIndex, RPTGRIND, PRODID, UserIDTime, DEX_ROW_ID FROM .ReportCatalogPending WHERE ( PRODNAME = @PRODNAME AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND Report_Option > @Report_Option OR PRODNAME = @PRODNAME AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam > @Business_Desk_Report_Nam OR PRODNAME = @PRODNAME AND RPTGRIND > @RPTGRIND OR PRODNAME > @PRODNAME ) ORDER BY PRODNAME ASC, RPTGRIND ASC, Business_Desk_Report_Nam ASC, Report_Option ASC, DEX_ROW_ID ASC END ELSE IF @PRODNAME_RS = @PRODNAME_RE BEGIN SELECT TOP 25  Business_Desk_Report_Nam, Report_Option, Last_Date_Published, DSCRIPTN, MKDTOPST, Identity_Column, PRODNAME, ListviewIndex, RPTGRIND, PRODID, UserIDTime, DEX_ROW_ID FROM .ReportCatalogPending WHERE PRODNAME = @PRODNAME_RS AND RPTGRIND BETWEEN @RPTGRIND_RS AND @RPTGRIND_RE AND Business_Desk_Report_Nam BETWEEN @Business_Desk_Report_Nam_RS AND @Business_Desk_Report_Nam_RE AND Report_Option BETWEEN @Report_Option_RS AND @Report_Option_RE AND ( PRODNAME = @PRODNAME AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND Report_Option > @Report_Option OR PRODNAME = @PRODNAME AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam > @Business_Desk_Report_Nam OR PRODNAME = @PRODNAME AND RPTGRIND > @RPTGRIND OR PRODNAME > @PRODNAME ) ORDER BY PRODNAME ASC, RPTGRIND ASC, Business_Desk_Report_Nam ASC, Report_Option ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Business_Desk_Report_Nam, Report_Option, Last_Date_Published, DSCRIPTN, MKDTOPST, Identity_Column, PRODNAME, ListviewIndex, RPTGRIND, PRODID, UserIDTime, DEX_ROW_ID FROM .ReportCatalogPending WHERE PRODNAME BETWEEN @PRODNAME_RS AND @PRODNAME_RE AND RPTGRIND BETWEEN @RPTGRIND_RS AND @RPTGRIND_RE AND Business_Desk_Report_Nam BETWEEN @Business_Desk_Report_Nam_RS AND @Business_Desk_Report_Nam_RE AND Report_Option BETWEEN @Report_Option_RS AND @Report_Option_RE AND ( PRODNAME = @PRODNAME AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND Report_Option > @Report_Option OR PRODNAME = @PRODNAME AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam > @Business_Desk_Report_Nam OR PRODNAME = @PRODNAME AND RPTGRIND > @RPTGRIND OR PRODNAME > @PRODNAME ) ORDER BY PRODNAME ASC, RPTGRIND ASC, Business_Desk_Report_Nam ASC, Report_Option ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportCatalogPendingUN_3] TO [DYNGRP]
GO