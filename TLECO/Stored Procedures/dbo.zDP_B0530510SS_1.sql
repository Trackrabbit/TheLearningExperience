SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0530510SS_1] (@BSSI_Capital_Call_ID char(25), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Capital_Call_ID, LNITMSEQ, VENDORID, MJW_Investment_Number, BSSI_InvestorCallPercent, BSSI_Investor_CallAmount, BSSI_InvestorInvPercent, BSSI_InvestorInvestAmt, BSSI_Investor_AR_Number, BSSI_Investor_AR_Batch, BSSI_Investor_AP_Number, BSSI_Investor_Confirmed, BSSI_Capital_Status_Line, BSSI_CommPaymentMethod, BSSI_Commission_Type, BSSI_Investor_Commission, BSSI_InvestorCommPercent, BSSI_Investor_Fee_Amt, BSSI_Investor_Info_Date, BSSI_Investor_Call_Date, BSSI_Investor_ReminderDT, BSSI_Investor_Due_Date, BSSI_InvestorInvestDT, SLPRSNID, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0530510 WHERE BSSI_Capital_Call_ID = @BSSI_Capital_Call_ID AND LNITMSEQ = @LNITMSEQ ORDER BY BSSI_Capital_Call_ID ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0530510SS_1] TO [DYNGRP]
GO
