SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510140F_3] (@MJW_Distribution_Number_RS char(21), @MJW_Investment_Number_RS char(21), @SLPRSNID_RS char(15), @MJW_Distribution_Number_RE char(21), @MJW_Investment_Number_RE char(21), @SLPRSNID_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Distribution_Number_RS IS NULL BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Investment_Number, VENDORID, MJW_With_Holding, MJW_Units_Purchased, MJW_Unit_Price, MJW_Distribution_Amount, MJW_AP_Invoice_Number, MJW_AP_Invoice_Number20, IMS_Commission_Type, IMS_Broker_ID, SLPRSNID, IMS_Dist_Comm_Percent, BSSI_Liquidation_Amount, BSSI_UnitsLiquidated, BSSI_Days_to_Prorate, BSSI_InvestorInvPercent, PRCNTAGE, BSSI_InvestorInvestAmt, BSSI_Capital_Call_ID, LNITMSEQ, CURNCYID, CURRNIDX, BSSI_Investor_AP_Number, DUMYRCRD, DEX_ROW_ID FROM .B0510140 ORDER BY MJW_Distribution_Number ASC, MJW_Investment_Number ASC, SLPRSNID ASC, DEX_ROW_ID ASC END ELSE IF @MJW_Distribution_Number_RS = @MJW_Distribution_Number_RE BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Investment_Number, VENDORID, MJW_With_Holding, MJW_Units_Purchased, MJW_Unit_Price, MJW_Distribution_Amount, MJW_AP_Invoice_Number, MJW_AP_Invoice_Number20, IMS_Commission_Type, IMS_Broker_ID, SLPRSNID, IMS_Dist_Comm_Percent, BSSI_Liquidation_Amount, BSSI_UnitsLiquidated, BSSI_Days_to_Prorate, BSSI_InvestorInvPercent, PRCNTAGE, BSSI_InvestorInvestAmt, BSSI_Capital_Call_ID, LNITMSEQ, CURNCYID, CURRNIDX, BSSI_Investor_AP_Number, DUMYRCRD, DEX_ROW_ID FROM .B0510140 WHERE MJW_Distribution_Number = @MJW_Distribution_Number_RS AND MJW_Investment_Number BETWEEN @MJW_Investment_Number_RS AND @MJW_Investment_Number_RE AND SLPRSNID BETWEEN @SLPRSNID_RS AND @SLPRSNID_RE ORDER BY MJW_Distribution_Number ASC, MJW_Investment_Number ASC, SLPRSNID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Investment_Number, VENDORID, MJW_With_Holding, MJW_Units_Purchased, MJW_Unit_Price, MJW_Distribution_Amount, MJW_AP_Invoice_Number, MJW_AP_Invoice_Number20, IMS_Commission_Type, IMS_Broker_ID, SLPRSNID, IMS_Dist_Comm_Percent, BSSI_Liquidation_Amount, BSSI_UnitsLiquidated, BSSI_Days_to_Prorate, BSSI_InvestorInvPercent, PRCNTAGE, BSSI_InvestorInvestAmt, BSSI_Capital_Call_ID, LNITMSEQ, CURNCYID, CURRNIDX, BSSI_Investor_AP_Number, DUMYRCRD, DEX_ROW_ID FROM .B0510140 WHERE MJW_Distribution_Number BETWEEN @MJW_Distribution_Number_RS AND @MJW_Distribution_Number_RE AND MJW_Investment_Number BETWEEN @MJW_Investment_Number_RS AND @MJW_Investment_Number_RE AND SLPRSNID BETWEEN @SLPRSNID_RS AND @SLPRSNID_RE ORDER BY MJW_Distribution_Number ASC, MJW_Investment_Number ASC, SLPRSNID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510140F_3] TO [DYNGRP]
GO
