SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510140SS_3] (@MJW_Distribution_Number char(21), @MJW_Investment_Number char(21), @SLPRSNID char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Distribution_Number, MJW_Investment_Number, VENDORID, MJW_With_Holding, MJW_Units_Purchased, MJW_Unit_Price, MJW_Distribution_Amount, MJW_AP_Invoice_Number, MJW_AP_Invoice_Number20, IMS_Commission_Type, IMS_Broker_ID, SLPRSNID, IMS_Dist_Comm_Percent, BSSI_Liquidation_Amount, BSSI_UnitsLiquidated, BSSI_Days_to_Prorate, BSSI_InvestorInvPercent, PRCNTAGE, BSSI_InvestorInvestAmt, BSSI_Capital_Call_ID, LNITMSEQ, CURNCYID, CURRNIDX, BSSI_Investor_AP_Number, DUMYRCRD, DEX_ROW_ID FROM .B0510140 WHERE MJW_Distribution_Number = @MJW_Distribution_Number AND MJW_Investment_Number = @MJW_Investment_Number AND SLPRSNID = @SLPRSNID ORDER BY MJW_Distribution_Number ASC, MJW_Investment_Number ASC, SLPRSNID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510140SS_3] TO [DYNGRP]
GO
