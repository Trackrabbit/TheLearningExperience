SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900800SI] (@BSSI_ChargeID char(21), @BSSI_ChargeDescription char(51), @BSSI_ChargeAmt numeric(19,5), @BSSI_ChargeIncInLease tinyint, @NOTEINDX numeric(19,5), @BSSI_ChargeAccountIndex int, @BSSI_ChargeExcludeIntCal tinyint, @BSSI_EnableProrateExtraC tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2900800 (BSSI_ChargeID, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, NOTEINDX, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_EnableProrateExtraC) VALUES ( @BSSI_ChargeID, @BSSI_ChargeDescription, @BSSI_ChargeAmt, @BSSI_ChargeIncInLease, @NOTEINDX, @BSSI_ChargeAccountIndex, @BSSI_ChargeExcludeIntCal, @BSSI_EnableProrateExtraC) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900800SI] TO [DYNGRP]
GO
