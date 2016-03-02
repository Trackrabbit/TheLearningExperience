SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4693202SD] (@BSSIChargeRateScheduleID char(25), @LNITMSEQ int, @BSSI_Billing_Frequency smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B4693202 WHERE BSSIChargeRateScheduleID = @BSSIChargeRateScheduleID AND LNITMSEQ = @LNITMSEQ AND BSSI_Billing_Frequency = @BSSI_Billing_Frequency AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B4693202 WHERE BSSIChargeRateScheduleID = @BSSIChargeRateScheduleID AND LNITMSEQ = @LNITMSEQ AND BSSI_Billing_Frequency = @BSSI_Billing_Frequency SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4693202SD] TO [DYNGRP]
GO
