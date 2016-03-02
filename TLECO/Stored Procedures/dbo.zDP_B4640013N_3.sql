SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640013N_3] (@BS int, @BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_ReportedDate datetime, @DEX_ROW_ID int, @BSSI_Tenant_Lease_Number_RS char(25), @LOCNCODE_RS char(11), @BSSI_ReportedDate_RS datetime, @BSSI_Tenant_Lease_Number_RE char(25), @LOCNCODE_RE char(11), @BSSI_ReportedDate_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, YEAR1, STRTDATE, ENDDATE, BSSI_AuditedAmount, BSSI_ReportedDate, PERIODID, BSSI_LastDateReport, BSSI_NumOfReminders, BSSI_LastReminder, CRUSRID, BSSI_Date_Entered, BSSI_SalesNumberStatus, BSSI_Sales_Report_Import, BSSI_Description, BSSI_Dummy, DEX_ROW_ID FROM .B4640013 WHERE ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_ReportedDate = @BSSI_ReportedDate AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_ReportedDate > @BSSI_ReportedDate OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE > @LOCNCODE OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_ReportedDate ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, YEAR1, STRTDATE, ENDDATE, BSSI_AuditedAmount, BSSI_ReportedDate, PERIODID, BSSI_LastDateReport, BSSI_NumOfReminders, BSSI_LastReminder, CRUSRID, BSSI_Date_Entered, BSSI_SalesNumberStatus, BSSI_Sales_Report_Import, BSSI_Description, BSSI_Dummy, DEX_ROW_ID FROM .B4640013 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_ReportedDate BETWEEN @BSSI_ReportedDate_RS AND @BSSI_ReportedDate_RE AND ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_ReportedDate = @BSSI_ReportedDate AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_ReportedDate > @BSSI_ReportedDate OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE > @LOCNCODE OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_ReportedDate ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, YEAR1, STRTDATE, ENDDATE, BSSI_AuditedAmount, BSSI_ReportedDate, PERIODID, BSSI_LastDateReport, BSSI_NumOfReminders, BSSI_LastReminder, CRUSRID, BSSI_Date_Entered, BSSI_SalesNumberStatus, BSSI_Sales_Report_Import, BSSI_Description, BSSI_Dummy, DEX_ROW_ID FROM .B4640013 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_ReportedDate BETWEEN @BSSI_ReportedDate_RS AND @BSSI_ReportedDate_RE AND ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_ReportedDate = @BSSI_ReportedDate AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_ReportedDate > @BSSI_ReportedDate OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE > @LOCNCODE OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_ReportedDate ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640013N_3] TO [DYNGRP]
GO
