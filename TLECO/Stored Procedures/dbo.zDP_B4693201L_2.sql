SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4693201L_2] (@BSSIChargeRateScheduleID_RS char(25), @BSSI_Effective_Date_RS datetime, @BSSIChargeRateScheduleID_RE char(25), @BSSI_Effective_Date_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @BSSIChargeRateScheduleID_RS IS NULL BEGIN SELECT TOP 25  BSSIChargeRateScheduleID, LNITMSEQ, BSSI_Effective_Date, BSSI_Rate, BSSI_Billing_Frequency, BSSI_ChangeRate, DEX_ROW_ID FROM .B4693201 ORDER BY BSSIChargeRateScheduleID DESC, BSSI_Effective_Date DESC, DEX_ROW_ID DESC END ELSE IF @BSSIChargeRateScheduleID_RS = @BSSIChargeRateScheduleID_RE BEGIN SELECT TOP 25  BSSIChargeRateScheduleID, LNITMSEQ, BSSI_Effective_Date, BSSI_Rate, BSSI_Billing_Frequency, BSSI_ChangeRate, DEX_ROW_ID FROM .B4693201 WHERE BSSIChargeRateScheduleID = @BSSIChargeRateScheduleID_RS AND BSSI_Effective_Date BETWEEN @BSSI_Effective_Date_RS AND @BSSI_Effective_Date_RE ORDER BY BSSIChargeRateScheduleID DESC, BSSI_Effective_Date DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSIChargeRateScheduleID, LNITMSEQ, BSSI_Effective_Date, BSSI_Rate, BSSI_Billing_Frequency, BSSI_ChangeRate, DEX_ROW_ID FROM .B4693201 WHERE BSSIChargeRateScheduleID BETWEEN @BSSIChargeRateScheduleID_RS AND @BSSIChargeRateScheduleID_RE AND BSSI_Effective_Date BETWEEN @BSSI_Effective_Date_RS AND @BSSI_Effective_Date_RE ORDER BY BSSIChargeRateScheduleID DESC, BSSI_Effective_Date DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4693201L_2] TO [DYNGRP]
GO
