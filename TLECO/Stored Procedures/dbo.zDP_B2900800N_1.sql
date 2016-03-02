SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900800N_1] (@BS int, @BSSI_ChargeID char(21), @BSSI_ChargeID_RS char(21), @BSSI_ChargeID_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_ChargeID_RS IS NULL BEGIN SELECT TOP 25  BSSI_ChargeID, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, NOTEINDX, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900800 WHERE ( BSSI_ChargeID > @BSSI_ChargeID ) ORDER BY BSSI_ChargeID ASC END ELSE IF @BSSI_ChargeID_RS = @BSSI_ChargeID_RE BEGIN SELECT TOP 25  BSSI_ChargeID, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, NOTEINDX, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900800 WHERE BSSI_ChargeID = @BSSI_ChargeID_RS AND ( BSSI_ChargeID > @BSSI_ChargeID ) ORDER BY BSSI_ChargeID ASC END ELSE BEGIN SELECT TOP 25  BSSI_ChargeID, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, NOTEINDX, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900800 WHERE BSSI_ChargeID BETWEEN @BSSI_ChargeID_RS AND @BSSI_ChargeID_RE AND ( BSSI_ChargeID > @BSSI_ChargeID ) ORDER BY BSSI_ChargeID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900800N_1] TO [DYNGRP]
GO
