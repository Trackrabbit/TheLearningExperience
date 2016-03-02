SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4693201SS_2] (@BSSIChargeRateScheduleID char(25), @BSSI_Effective_Date datetime) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSIChargeRateScheduleID, LNITMSEQ, BSSI_Effective_Date, BSSI_Rate, BSSI_Billing_Frequency, BSSI_ChangeRate, DEX_ROW_ID FROM .B4693201 WHERE BSSIChargeRateScheduleID = @BSSIChargeRateScheduleID AND BSSI_Effective_Date = @BSSI_Effective_Date ORDER BY BSSIChargeRateScheduleID ASC, BSSI_Effective_Date ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4693201SS_2] TO [DYNGRP]
GO
