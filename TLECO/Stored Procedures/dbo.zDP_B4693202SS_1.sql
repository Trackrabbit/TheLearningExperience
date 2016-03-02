SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4693202SS_1] (@BSSIChargeRateScheduleID char(25), @LNITMSEQ int, @BSSI_Billing_Frequency smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSIChargeRateScheduleID, LNITMSEQ, BSSI_Effective_Date, BSSI_Rate, BSSI_Billing_Frequency, DEX_ROW_ID FROM .B4693202 WHERE BSSIChargeRateScheduleID = @BSSIChargeRateScheduleID AND LNITMSEQ = @LNITMSEQ AND BSSI_Billing_Frequency = @BSSI_Billing_Frequency ORDER BY BSSIChargeRateScheduleID ASC, LNITMSEQ ASC, BSSI_Billing_Frequency ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4693202SS_1] TO [DYNGRP]
GO
