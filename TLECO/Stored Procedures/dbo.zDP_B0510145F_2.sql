SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510145F_2] (@MJW_AP_Invoice_Number_RS char(17), @MJW_AP_Invoice_Number_RE char(17)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_AP_Invoice_Number_RS IS NULL BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Investment_Number, VENDORID, MJW_With_Holding, MJW_Units_Purchased, MJW_Unit_Price, MJW_Distribution_Amount, MJW_AP_Invoice_Number, MJW_AP_Invoice_Number20, IMS_Commission_Type, IMS_Broker_ID, SLPRSNID, IMS_Dist_Comm_Percent, BSSI_UnitsLiquidated, BSSI_Liquidation_Amount, BSSI_Days_to_Prorate, BSSI_InvestorInvPercent, BSSI_InvestorInvestAmt, BSSI_Capital_Call_ID, LNITMSEQ, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0510145 ORDER BY MJW_AP_Invoice_Number ASC, DEX_ROW_ID ASC END ELSE IF @MJW_AP_Invoice_Number_RS = @MJW_AP_Invoice_Number_RE BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Investment_Number, VENDORID, MJW_With_Holding, MJW_Units_Purchased, MJW_Unit_Price, MJW_Distribution_Amount, MJW_AP_Invoice_Number, MJW_AP_Invoice_Number20, IMS_Commission_Type, IMS_Broker_ID, SLPRSNID, IMS_Dist_Comm_Percent, BSSI_UnitsLiquidated, BSSI_Liquidation_Amount, BSSI_Days_to_Prorate, BSSI_InvestorInvPercent, BSSI_InvestorInvestAmt, BSSI_Capital_Call_ID, LNITMSEQ, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0510145 WHERE MJW_AP_Invoice_Number = @MJW_AP_Invoice_Number_RS ORDER BY MJW_AP_Invoice_Number ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Investment_Number, VENDORID, MJW_With_Holding, MJW_Units_Purchased, MJW_Unit_Price, MJW_Distribution_Amount, MJW_AP_Invoice_Number, MJW_AP_Invoice_Number20, IMS_Commission_Type, IMS_Broker_ID, SLPRSNID, IMS_Dist_Comm_Percent, BSSI_UnitsLiquidated, BSSI_Liquidation_Amount, BSSI_Days_to_Prorate, BSSI_InvestorInvPercent, BSSI_InvestorInvestAmt, BSSI_Capital_Call_ID, LNITMSEQ, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0510145 WHERE MJW_AP_Invoice_Number BETWEEN @MJW_AP_Invoice_Number_RS AND @MJW_AP_Invoice_Number_RE ORDER BY MJW_AP_Invoice_Number ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510145F_2] TO [DYNGRP]
GO
