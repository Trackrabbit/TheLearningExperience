SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640085SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @LNITMSEQ int, @LNSEQNBR numeric(19,5), @BSSI_BreakField1 smallint, @BSSI_BreakField2 smallint, @BSSI_BreakField3 smallint, @BSSI_BreakField4 smallint, @BSSI_Charge_ID char(25), @BSSI_CPI_Index numeric(19,5), @BSSI_CPI_Index1 numeric(19,5), @BSSI_CPI_Date datetime, @BSSI_CPI_Date1 datetime, @BSSI_CPIChange numeric(19,5), @BSSI_CPIAmount numeric(19,5), @BSSI_CurrentRate numeric(19,5), @BSSI_PreviousRate numeric(19,5), @BSSI_Effective_Date datetime, @BSSI_PreviousEffectiveDa datetime, @BSSI_Increase_Amount numeric(19,5), @BSSI_Increase_Percent numeric(19,5), @BSSI_CeilingAmount numeric(19,5), @BSSI_CeilingAmt numeric(19,5), @BSSI_FlooringAmount numeric(19,5), @BSSI_FloorAmt numeric(19,5), @BSSI_ProrationFactor numeric(19,5), @BSSI_EscProrationFactor numeric(19,5), @BSSI_PrevAmount numeric(19,5), @BSSI_CurAmount numeric(19,5), @BSSI_EscalationType smallint, @BSSI_PercentAmount numeric(19,5), @BSSI_RateAmount numeric(19,5), @NAME char(31), @LOCNDSCR char(31), @BSSI_Description char(51), @CUSTNMBR char(15), @CUSTNAME char(65), @STRTDATE datetime, @ENDDATE datetime, @BSSI_CPI_Schedule_ID char(25), @BSSIChargeRateScheduleID char(25), @SOPNUMBE char(21), @SOPTYPE smallint, @BSSI_Total_Adjustment numeric(19,5), @BSSI_Escalation_Type1 smallint, @BSSI_RateChange numeric(19,5), @BSSI_ProratedIncrease numeric(19,5), @BSSI_EscalationApplyDate datetime, @BSSI_EscalationPrevApply datetime, @BSSI_Sales_Amount numeric(19,5), @BSSI_AmountBeforeAdj numeric(19,5), @BSSI_AmountBeforeProrati numeric(19,5), @BSSI_Charge_Amount numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640085 (BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_BreakField1, BSSI_BreakField2, BSSI_BreakField3, BSSI_BreakField4, BSSI_Charge_ID, BSSI_CPI_Index, BSSI_CPI_Index1, BSSI_CPI_Date, BSSI_CPI_Date1, BSSI_CPIChange, BSSI_CPIAmount, BSSI_CurrentRate, BSSI_PreviousRate, BSSI_Effective_Date, BSSI_PreviousEffectiveDa, BSSI_Increase_Amount, BSSI_Increase_Percent, BSSI_CeilingAmount, BSSI_CeilingAmt, BSSI_FlooringAmount, BSSI_FloorAmt, BSSI_ProrationFactor, BSSI_EscProrationFactor, BSSI_PrevAmount, BSSI_CurAmount, BSSI_EscalationType, BSSI_PercentAmount, BSSI_RateAmount, NAME, LOCNDSCR, BSSI_Description, CUSTNMBR, CUSTNAME, STRTDATE, ENDDATE, BSSI_CPI_Schedule_ID, BSSIChargeRateScheduleID, SOPNUMBE, SOPTYPE, BSSI_Total_Adjustment, BSSI_Escalation_Type1, BSSI_RateChange, BSSI_ProratedIncrease, BSSI_EscalationApplyDate, BSSI_EscalationPrevApply, BSSI_Sales_Amount, BSSI_AmountBeforeAdj, BSSI_AmountBeforeProrati, BSSI_Charge_Amount) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @LNITMSEQ, @LNSEQNBR, @BSSI_BreakField1, @BSSI_BreakField2, @BSSI_BreakField3, @BSSI_BreakField4, @BSSI_Charge_ID, @BSSI_CPI_Index, @BSSI_CPI_Index1, @BSSI_CPI_Date, @BSSI_CPI_Date1, @BSSI_CPIChange, @BSSI_CPIAmount, @BSSI_CurrentRate, @BSSI_PreviousRate, @BSSI_Effective_Date, @BSSI_PreviousEffectiveDa, @BSSI_Increase_Amount, @BSSI_Increase_Percent, @BSSI_CeilingAmount, @BSSI_CeilingAmt, @BSSI_FlooringAmount, @BSSI_FloorAmt, @BSSI_ProrationFactor, @BSSI_EscProrationFactor, @BSSI_PrevAmount, @BSSI_CurAmount, @BSSI_EscalationType, @BSSI_PercentAmount, @BSSI_RateAmount, @NAME, @LOCNDSCR, @BSSI_Description, @CUSTNMBR, @CUSTNAME, @STRTDATE, @ENDDATE, @BSSI_CPI_Schedule_ID, @BSSIChargeRateScheduleID, @SOPNUMBE, @SOPTYPE, @BSSI_Total_Adjustment, @BSSI_Escalation_Type1, @BSSI_RateChange, @BSSI_ProratedIncrease, @BSSI_EscalationApplyDate, @BSSI_EscalationPrevApply, @BSSI_Sales_Amount, @BSSI_AmountBeforeAdj, @BSSI_AmountBeforeProrati, @BSSI_Charge_Amount) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640085SI] TO [DYNGRP]
GO