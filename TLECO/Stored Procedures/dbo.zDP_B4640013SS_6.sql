SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640013SS_6] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_LastDateReport datetime) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, YEAR1, STRTDATE, ENDDATE, BSSI_AuditedAmount, BSSI_ReportedDate, PERIODID, BSSI_LastDateReport, BSSI_NumOfReminders, BSSI_LastReminder, CRUSRID, BSSI_Date_Entered, BSSI_SalesNumberStatus, BSSI_Sales_Report_Import, BSSI_Description, BSSI_Dummy, DEX_ROW_ID FROM .B4640013 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_LastDateReport = @BSSI_LastDateReport ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_LastDateReport ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640013SS_6] TO [DYNGRP]
GO
