SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510145SS_5] (@BSSI_Capital_Call_ID char(25), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Distribution_Number, MJW_Investment_Number, VENDORID, MJW_With_Holding, MJW_Units_Purchased, MJW_Unit_Price, MJW_Distribution_Amount, MJW_AP_Invoice_Number, MJW_AP_Invoice_Number20, IMS_Commission_Type, IMS_Broker_ID, SLPRSNID, IMS_Dist_Comm_Percent, BSSI_UnitsLiquidated, BSSI_Liquidation_Amount, BSSI_Days_to_Prorate, BSSI_InvestorInvPercent, BSSI_InvestorInvestAmt, BSSI_Capital_Call_ID, LNITMSEQ, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0510145 WHERE BSSI_Capital_Call_ID = @BSSI_Capital_Call_ID AND LNITMSEQ = @LNITMSEQ ORDER BY BSSI_Capital_Call_ID ASC, LNITMSEQ ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510145SS_5] TO [DYNGRP]
GO
