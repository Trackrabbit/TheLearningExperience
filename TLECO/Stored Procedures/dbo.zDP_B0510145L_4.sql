SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510145L_4] (@VENDORID_RS char(15), @VENDORID_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Investment_Number, VENDORID, MJW_With_Holding, MJW_Units_Purchased, MJW_Unit_Price, MJW_Distribution_Amount, MJW_AP_Invoice_Number, MJW_AP_Invoice_Number20, IMS_Commission_Type, IMS_Broker_ID, SLPRSNID, IMS_Dist_Comm_Percent, BSSI_UnitsLiquidated, BSSI_Liquidation_Amount, BSSI_Days_to_Prorate, BSSI_InvestorInvPercent, BSSI_InvestorInvestAmt, BSSI_Capital_Call_ID, LNITMSEQ, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0510145 ORDER BY VENDORID DESC, DEX_ROW_ID DESC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Investment_Number, VENDORID, MJW_With_Holding, MJW_Units_Purchased, MJW_Unit_Price, MJW_Distribution_Amount, MJW_AP_Invoice_Number, MJW_AP_Invoice_Number20, IMS_Commission_Type, IMS_Broker_ID, SLPRSNID, IMS_Dist_Comm_Percent, BSSI_UnitsLiquidated, BSSI_Liquidation_Amount, BSSI_Days_to_Prorate, BSSI_InvestorInvPercent, BSSI_InvestorInvestAmt, BSSI_Capital_Call_ID, LNITMSEQ, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0510145 WHERE VENDORID = @VENDORID_RS ORDER BY VENDORID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  MJW_Distribution_Number, MJW_Investment_Number, VENDORID, MJW_With_Holding, MJW_Units_Purchased, MJW_Unit_Price, MJW_Distribution_Amount, MJW_AP_Invoice_Number, MJW_AP_Invoice_Number20, IMS_Commission_Type, IMS_Broker_ID, SLPRSNID, IMS_Dist_Comm_Percent, BSSI_UnitsLiquidated, BSSI_Liquidation_Amount, BSSI_Days_to_Prorate, BSSI_InvestorInvPercent, BSSI_InvestorInvestAmt, BSSI_Capital_Call_ID, LNITMSEQ, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0510145 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE ORDER BY VENDORID DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510145L_4] TO [DYNGRP]
GO
