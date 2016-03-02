SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510510L_1] (@BSSI_Capital_Call_ID_RS char(25), @LNITMSEQ_RS int, @BSSI_Capital_Call_ID_RE char(25), @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Capital_Call_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Capital_Call_ID, LNITMSEQ, VENDORID, MJW_Investment_Number, BSSI_InvestorCallPercent, BSSI_Investor_CallAmount, BSSI_InvestorInvPercent, BSSI_InvestorInvestAmt, BSSI_Investor_AR_Number, BSSI_Investor_AR_Batch, BSSI_Investor_AP_Number, BSSI_Investor_Confirmed, BSSI_Capital_Status_Line, BSSI_CommPaymentMethod, BSSI_Commission_Type, BSSI_Investor_Commission, BSSI_InvestorCommPercent, BSSI_Investor_Fee_Amt, BSSI_Investor_Info_Date, BSSI_Investor_Call_Date, BSSI_Investor_ReminderDT, BSSI_Investor_Due_Date, BSSI_InvestorInvestDT, SLPRSNID, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0510510 ORDER BY BSSI_Capital_Call_ID DESC, LNITMSEQ DESC END ELSE IF @BSSI_Capital_Call_ID_RS = @BSSI_Capital_Call_ID_RE BEGIN SELECT TOP 25  BSSI_Capital_Call_ID, LNITMSEQ, VENDORID, MJW_Investment_Number, BSSI_InvestorCallPercent, BSSI_Investor_CallAmount, BSSI_InvestorInvPercent, BSSI_InvestorInvestAmt, BSSI_Investor_AR_Number, BSSI_Investor_AR_Batch, BSSI_Investor_AP_Number, BSSI_Investor_Confirmed, BSSI_Capital_Status_Line, BSSI_CommPaymentMethod, BSSI_Commission_Type, BSSI_Investor_Commission, BSSI_InvestorCommPercent, BSSI_Investor_Fee_Amt, BSSI_Investor_Info_Date, BSSI_Investor_Call_Date, BSSI_Investor_ReminderDT, BSSI_Investor_Due_Date, BSSI_InvestorInvestDT, SLPRSNID, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0510510 WHERE BSSI_Capital_Call_ID = @BSSI_Capital_Call_ID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY BSSI_Capital_Call_ID DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  BSSI_Capital_Call_ID, LNITMSEQ, VENDORID, MJW_Investment_Number, BSSI_InvestorCallPercent, BSSI_Investor_CallAmount, BSSI_InvestorInvPercent, BSSI_InvestorInvestAmt, BSSI_Investor_AR_Number, BSSI_Investor_AR_Batch, BSSI_Investor_AP_Number, BSSI_Investor_Confirmed, BSSI_Capital_Status_Line, BSSI_CommPaymentMethod, BSSI_Commission_Type, BSSI_Investor_Commission, BSSI_InvestorCommPercent, BSSI_Investor_Fee_Amt, BSSI_Investor_Info_Date, BSSI_Investor_Call_Date, BSSI_Investor_ReminderDT, BSSI_Investor_Due_Date, BSSI_InvestorInvestDT, SLPRSNID, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0510510 WHERE BSSI_Capital_Call_ID BETWEEN @BSSI_Capital_Call_ID_RS AND @BSSI_Capital_Call_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY BSSI_Capital_Call_ID DESC, LNITMSEQ DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510510L_1] TO [DYNGRP]
GO
