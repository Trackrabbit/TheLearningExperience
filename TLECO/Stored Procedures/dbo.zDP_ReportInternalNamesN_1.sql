SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ReportInternalNamesN_1] (@BS int, @PRODID smallint, @RPTGRIND smallint, @Business_Desk_Report_Nam char(51), @RPTGRNMS char(21), @Internal_Report_Name char(81), @PRODID_RS smallint, @RPTGRIND_RS smallint, @Business_Desk_Report_Nam_RS char(51), @RPTGRNMS_RS char(21), @Internal_Report_Name_RS char(81), @PRODID_RE smallint, @RPTGRIND_RE smallint, @Business_Desk_Report_Nam_RE char(51), @RPTGRNMS_RE char(21), @Internal_Report_Name_RE char(81)) AS  set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, RPTGRIND, Business_Desk_Report_Nam, RPTGRNMS, Internal_Report_Name, DEX_ROW_ID FROM .ReportInternalNames WHERE ( PRODID = @PRODID AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRNMS = @RPTGRNMS AND Internal_Report_Name > @Internal_Report_Name OR PRODID = @PRODID AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRNMS > @RPTGRNMS OR PRODID = @PRODID AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam > @Business_Desk_Report_Nam OR PRODID = @PRODID AND RPTGRIND > @RPTGRIND OR PRODID > @PRODID ) ORDER BY PRODID ASC, RPTGRIND ASC, Business_Desk_Report_Nam ASC, RPTGRNMS ASC, Internal_Report_Name ASC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, RPTGRIND, Business_Desk_Report_Nam, RPTGRNMS, Internal_Report_Name, DEX_ROW_ID FROM .ReportInternalNames WHERE PRODID = @PRODID_RS AND RPTGRIND BETWEEN @RPTGRIND_RS AND @RPTGRIND_RE AND Business_Desk_Report_Nam BETWEEN @Business_Desk_Report_Nam_RS AND @Business_Desk_Report_Nam_RE AND RPTGRNMS BETWEEN @RPTGRNMS_RS AND @RPTGRNMS_RE AND Internal_Report_Name BETWEEN @Internal_Report_Name_RS AND @Internal_Report_Name_RE AND ( PRODID = @PRODID AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRNMS = @RPTGRNMS AND Internal_Report_Name > @Internal_Report_Name OR PRODID = @PRODID AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRNMS > @RPTGRNMS OR PRODID = @PRODID AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam > @Business_Desk_Report_Nam OR PRODID = @PRODID AND RPTGRIND > @RPTGRIND OR PRODID > @PRODID ) ORDER BY PRODID ASC, RPTGRIND ASC, Business_Desk_Report_Nam ASC, RPTGRNMS ASC, Internal_Report_Name ASC END ELSE BEGIN SELECT TOP 25  PRODID, RPTGRIND, Business_Desk_Report_Nam, RPTGRNMS, Internal_Report_Name, DEX_ROW_ID FROM .ReportInternalNames WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND RPTGRIND BETWEEN @RPTGRIND_RS AND @RPTGRIND_RE AND Business_Desk_Report_Nam BETWEEN @Business_Desk_Report_Nam_RS AND @Business_Desk_Report_Nam_RE AND RPTGRNMS BETWEEN @RPTGRNMS_RS AND @RPTGRNMS_RE AND Internal_Report_Name BETWEEN @Internal_Report_Name_RS AND @Internal_Report_Name_RE AND ( PRODID = @PRODID AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRNMS = @RPTGRNMS AND Internal_Report_Name > @Internal_Report_Name OR PRODID = @PRODID AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam = @Business_Desk_Report_Nam AND RPTGRNMS > @RPTGRNMS OR PRODID = @PRODID AND RPTGRIND = @RPTGRIND AND Business_Desk_Report_Nam > @Business_Desk_Report_Nam OR PRODID = @PRODID AND RPTGRIND > @RPTGRIND OR PRODID > @PRODID ) ORDER BY PRODID ASC, RPTGRIND ASC, Business_Desk_Report_Nam ASC, RPTGRNMS ASC, Internal_Report_Name ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ReportInternalNamesN_1] TO [DYNGRP]
GO
