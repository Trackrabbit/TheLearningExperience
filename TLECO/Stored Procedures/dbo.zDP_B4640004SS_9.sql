SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640004SS_9] (@LOCNCODE char(11)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LOCNCODE, LNSEQNBR, YEAR1, PERIODID, STRTDATE, ENDDATE, BSSI_LastDateReport, BSSI_ReportedAmt, BSSI_ReportedDate, DATE1, BSSI_SalesNumberStatus, BSSI_Sales_Amount, BSSI_Reference, SOPNUMBE, BSSI_NumOfReminders, BSSI_LastReminder, BSSI_Charge_ID, BSSI_LateChargeAmt, BSSI_LateChargeRef, BSSI_DateCharged, BSSI_ConfirmedUserID, BSSI_ConfirmedDate, CRUSRID, BSSI_ConfirmedCB, BSSI_ChargeLineSeq, BSSI_YearEndChargeLineSe, BSSI_Sales_Report_Import, BSSI_ReversingChargeLine, BSSI_Description, BSSI_Dummy, DEX_ROW_ID FROM .B4640004 WHERE LOCNCODE = @LOCNCODE ORDER BY LOCNCODE ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640004SS_9] TO [DYNGRP]
GO