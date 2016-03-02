SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640013F_10] (@BSSI_Description_RS char(51), @LOCNCODE_RS char(11), @LNSEQNBR_RS numeric(19,5), @STRTDATE_RS datetime, @BSSI_Description_RE char(51), @LOCNCODE_RE char(11), @LNSEQNBR_RE numeric(19,5), @STRTDATE_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Description_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, YEAR1, STRTDATE, ENDDATE, BSSI_AuditedAmount, BSSI_ReportedDate, PERIODID, BSSI_LastDateReport, BSSI_NumOfReminders, BSSI_LastReminder, CRUSRID, BSSI_Date_Entered, BSSI_SalesNumberStatus, BSSI_Sales_Report_Import, BSSI_Description, BSSI_Dummy, DEX_ROW_ID FROM .B4640013 ORDER BY BSSI_Description ASC, LOCNCODE ASC, LNSEQNBR ASC, STRTDATE ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Description_RS = @BSSI_Description_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, YEAR1, STRTDATE, ENDDATE, BSSI_AuditedAmount, BSSI_ReportedDate, PERIODID, BSSI_LastDateReport, BSSI_NumOfReminders, BSSI_LastReminder, CRUSRID, BSSI_Date_Entered, BSSI_SalesNumberStatus, BSSI_Sales_Report_Import, BSSI_Description, BSSI_Dummy, DEX_ROW_ID FROM .B4640013 WHERE BSSI_Description = @BSSI_Description_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE ORDER BY BSSI_Description ASC, LOCNCODE ASC, LNSEQNBR ASC, STRTDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, YEAR1, STRTDATE, ENDDATE, BSSI_AuditedAmount, BSSI_ReportedDate, PERIODID, BSSI_LastDateReport, BSSI_NumOfReminders, BSSI_LastReminder, CRUSRID, BSSI_Date_Entered, BSSI_SalesNumberStatus, BSSI_Sales_Report_Import, BSSI_Description, BSSI_Dummy, DEX_ROW_ID FROM .B4640013 WHERE BSSI_Description BETWEEN @BSSI_Description_RS AND @BSSI_Description_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE ORDER BY BSSI_Description ASC, LOCNCODE ASC, LNSEQNBR ASC, STRTDATE ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640013F_10] TO [DYNGRP]
GO
