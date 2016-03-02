SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640013SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @LNSEQNBR numeric(19,5), @YEAR1 smallint, @STRTDATE datetime, @ENDDATE datetime, @BSSI_AuditedAmount numeric(19,5), @BSSI_ReportedDate datetime, @PERIODID smallint, @BSSI_LastDateReport datetime, @BSSI_NumOfReminders smallint, @BSSI_LastReminder datetime, @CRUSRID char(15), @BSSI_Date_Entered datetime, @BSSI_SalesNumberStatus smallint, @BSSI_Sales_Report_Import tinyint, @BSSI_Description char(51), @BSSI_Dummy tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640013 (BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, YEAR1, STRTDATE, ENDDATE, BSSI_AuditedAmount, BSSI_ReportedDate, PERIODID, BSSI_LastDateReport, BSSI_NumOfReminders, BSSI_LastReminder, CRUSRID, BSSI_Date_Entered, BSSI_SalesNumberStatus, BSSI_Sales_Report_Import, BSSI_Description, BSSI_Dummy) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @LNSEQNBR, @YEAR1, @STRTDATE, @ENDDATE, @BSSI_AuditedAmount, @BSSI_ReportedDate, @PERIODID, @BSSI_LastDateReport, @BSSI_NumOfReminders, @BSSI_LastReminder, @CRUSRID, @BSSI_Date_Entered, @BSSI_SalesNumberStatus, @BSSI_Sales_Report_Import, @BSSI_Description, @BSSI_Dummy) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640013SI] TO [DYNGRP]
GO
