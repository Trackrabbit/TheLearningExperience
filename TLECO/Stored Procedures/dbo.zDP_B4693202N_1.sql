SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4693202N_1] (@BS int, @BSSIChargeRateScheduleID char(25), @LNITMSEQ int, @BSSI_Billing_Frequency smallint, @BSSIChargeRateScheduleID_RS char(25), @LNITMSEQ_RS int, @BSSI_Billing_Frequency_RS smallint, @BSSIChargeRateScheduleID_RE char(25), @LNITMSEQ_RE int, @BSSI_Billing_Frequency_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @BSSIChargeRateScheduleID_RS IS NULL BEGIN SELECT TOP 25  BSSIChargeRateScheduleID, LNITMSEQ, BSSI_Effective_Date, BSSI_Rate, BSSI_Billing_Frequency, DEX_ROW_ID FROM .B4693202 WHERE ( BSSIChargeRateScheduleID = @BSSIChargeRateScheduleID AND LNITMSEQ = @LNITMSEQ AND BSSI_Billing_Frequency > @BSSI_Billing_Frequency OR BSSIChargeRateScheduleID = @BSSIChargeRateScheduleID AND LNITMSEQ > @LNITMSEQ OR BSSIChargeRateScheduleID > @BSSIChargeRateScheduleID ) ORDER BY BSSIChargeRateScheduleID ASC, LNITMSEQ ASC, BSSI_Billing_Frequency ASC END ELSE IF @BSSIChargeRateScheduleID_RS = @BSSIChargeRateScheduleID_RE BEGIN SELECT TOP 25  BSSIChargeRateScheduleID, LNITMSEQ, BSSI_Effective_Date, BSSI_Rate, BSSI_Billing_Frequency, DEX_ROW_ID FROM .B4693202 WHERE BSSIChargeRateScheduleID = @BSSIChargeRateScheduleID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND BSSI_Billing_Frequency BETWEEN @BSSI_Billing_Frequency_RS AND @BSSI_Billing_Frequency_RE AND ( BSSIChargeRateScheduleID = @BSSIChargeRateScheduleID AND LNITMSEQ = @LNITMSEQ AND BSSI_Billing_Frequency > @BSSI_Billing_Frequency OR BSSIChargeRateScheduleID = @BSSIChargeRateScheduleID AND LNITMSEQ > @LNITMSEQ OR BSSIChargeRateScheduleID > @BSSIChargeRateScheduleID ) ORDER BY BSSIChargeRateScheduleID ASC, LNITMSEQ ASC, BSSI_Billing_Frequency ASC END ELSE BEGIN SELECT TOP 25  BSSIChargeRateScheduleID, LNITMSEQ, BSSI_Effective_Date, BSSI_Rate, BSSI_Billing_Frequency, DEX_ROW_ID FROM .B4693202 WHERE BSSIChargeRateScheduleID BETWEEN @BSSIChargeRateScheduleID_RS AND @BSSIChargeRateScheduleID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND BSSI_Billing_Frequency BETWEEN @BSSI_Billing_Frequency_RS AND @BSSI_Billing_Frequency_RE AND ( BSSIChargeRateScheduleID = @BSSIChargeRateScheduleID AND LNITMSEQ = @LNITMSEQ AND BSSI_Billing_Frequency > @BSSI_Billing_Frequency OR BSSIChargeRateScheduleID = @BSSIChargeRateScheduleID AND LNITMSEQ > @LNITMSEQ OR BSSIChargeRateScheduleID > @BSSIChargeRateScheduleID ) ORDER BY BSSIChargeRateScheduleID ASC, LNITMSEQ ASC, BSSI_Billing_Frequency ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4693202N_1] TO [DYNGRP]
GO
