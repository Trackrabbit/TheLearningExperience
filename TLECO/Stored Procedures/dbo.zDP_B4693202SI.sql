SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4693202SI] (@BSSIChargeRateScheduleID char(25), @LNITMSEQ int, @BSSI_Effective_Date datetime, @BSSI_Rate numeric(19,5), @BSSI_Billing_Frequency smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4693202 (BSSIChargeRateScheduleID, LNITMSEQ, BSSI_Effective_Date, BSSI_Rate, BSSI_Billing_Frequency) VALUES ( @BSSIChargeRateScheduleID, @LNITMSEQ, @BSSI_Effective_Date, @BSSI_Rate, @BSSI_Billing_Frequency) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4693202SI] TO [DYNGRP]
GO
