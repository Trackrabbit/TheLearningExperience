SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900800SS_3] (@BSSI_ChargeDescription char(51), @BSSI_ChargeID char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_ChargeID, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, NOTEINDX, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900800 WHERE BSSI_ChargeDescription = @BSSI_ChargeDescription AND BSSI_ChargeID = @BSSI_ChargeID ORDER BY BSSI_ChargeDescription ASC, BSSI_ChargeID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900800SS_3] TO [DYNGRP]
GO
