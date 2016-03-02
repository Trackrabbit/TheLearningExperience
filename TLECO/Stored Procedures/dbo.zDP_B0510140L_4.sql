SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510140L_4] (@MJW_Distribution_Number_RS char(21), @BSSI_Capital_Call_ID_RS char(25), @LNITMSEQ_RS int, @MJW_Distribution_Number_RE char(21), @BSSI_Capital_Call_ID_RE char(25), @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Distribution_Number_RS IS NULL BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Investment_Number, VENDORID, MJW_With_Holding, MJW_Units_Purchased, MJW_Unit_Price, MJW_Distribution_Amount, MJW_AP_Invoice_Number, MJW_AP_Invoice_Number20, IMS_Commission_Type, IMS_Broker_ID, SLPRSNID, IMS_Dist_Comm_Percent, BSSI_Liquidation_Amount, BSSI_UnitsLiquidated, BSSI_Days_to_Prorate, BSSI_InvestorInvPercent, PRCNTAGE, BSSI_InvestorInvestAmt, BSSI_Capital_Call_ID, LNITMSEQ, CURNCYID, CURRNIDX, BSSI_Investor_AP_Number, DUMYRCRD, DEX_ROW_ID FROM .B0510140 ORDER BY MJW_Distribution_Number DESC, BSSI_Capital_Call_ID DESC, LNITMSEQ DESC, DEX_ROW_ID DESC END ELSE IF @MJW_Distribution_Number_RS = @MJW_Distribution_Number_RE BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Investment_Number, VENDORID, MJW_With_Holding, MJW_Units_Purchased, MJW_Unit_Price, MJW_Distribution_Amount, MJW_AP_Invoice_Number, MJW_AP_Invoice_Number20, IMS_Commission_Type, IMS_Broker_ID, SLPRSNID, IMS_Dist_Comm_Percent, BSSI_Liquidation_Amount, BSSI_UnitsLiquidated, BSSI_Days_to_Prorate, BSSI_InvestorInvPercent, PRCNTAGE, BSSI_InvestorInvestAmt, BSSI_Capital_Call_ID, LNITMSEQ, CURNCYID, CURRNIDX, BSSI_Investor_AP_Number, DUMYRCRD, DEX_ROW_ID FROM .B0510140 WHERE MJW_Distribution_Number = @MJW_Distribution_Number_RS AND BSSI_Capital_Call_ID BETWEEN @BSSI_Capital_Call_ID_RS AND @BSSI_Capital_Call_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY MJW_Distribution_Number DESC, BSSI_Capital_Call_ID DESC, LNITMSEQ DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Investment_Number, VENDORID, MJW_With_Holding, MJW_Units_Purchased, MJW_Unit_Price, MJW_Distribution_Amount, MJW_AP_Invoice_Number, MJW_AP_Invoice_Number20, IMS_Commission_Type, IMS_Broker_ID, SLPRSNID, IMS_Dist_Comm_Percent, BSSI_Liquidation_Amount, BSSI_UnitsLiquidated, BSSI_Days_to_Prorate, BSSI_InvestorInvPercent, PRCNTAGE, BSSI_InvestorInvestAmt, BSSI_Capital_Call_ID, LNITMSEQ, CURNCYID, CURRNIDX, BSSI_Investor_AP_Number, DUMYRCRD, DEX_ROW_ID FROM .B0510140 WHERE MJW_Distribution_Number BETWEEN @MJW_Distribution_Number_RS AND @MJW_Distribution_Number_RE AND BSSI_Capital_Call_ID BETWEEN @BSSI_Capital_Call_ID_RS AND @BSSI_Capital_Call_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY MJW_Distribution_Number DESC, BSSI_Capital_Call_ID DESC, LNITMSEQ DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510140L_4] TO [DYNGRP]
GO
