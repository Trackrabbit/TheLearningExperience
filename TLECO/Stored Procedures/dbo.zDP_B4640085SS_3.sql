SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640085SS_3] (@SOPNUMBE char(21), @SOPTYPE smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_BreakField1, BSSI_BreakField2, BSSI_BreakField3, BSSI_BreakField4, BSSI_Charge_ID, BSSI_CPI_Index, BSSI_CPI_Index1, BSSI_CPI_Date, BSSI_CPI_Date1, BSSI_CPIChange, BSSI_CPIAmount, BSSI_CurrentRate, BSSI_PreviousRate, BSSI_Effective_Date, BSSI_PreviousEffectiveDa, BSSI_Increase_Amount, BSSI_Increase_Percent, BSSI_CeilingAmount, BSSI_CeilingAmt, BSSI_FlooringAmount, BSSI_FloorAmt, BSSI_ProrationFactor, BSSI_EscProrationFactor, BSSI_PrevAmount, BSSI_CurAmount, BSSI_EscalationType, BSSI_PercentAmount, BSSI_RateAmount, NAME, LOCNDSCR, BSSI_Description, CUSTNMBR, CUSTNAME, STRTDATE, ENDDATE, BSSI_CPI_Schedule_ID, BSSIChargeRateScheduleID, SOPNUMBE, SOPTYPE, BSSI_Total_Adjustment, BSSI_Escalation_Type1, BSSI_RateChange, BSSI_ProratedIncrease, BSSI_EscalationApplyDate, BSSI_EscalationPrevApply, BSSI_Sales_Amount, BSSI_AmountBeforeAdj, BSSI_AmountBeforeProrati, BSSI_Charge_Amount, DEX_ROW_ID FROM .B4640085 WHERE SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE ORDER BY SOPNUMBE ASC, SOPTYPE ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640085SS_3] TO [DYNGRP]
GO
