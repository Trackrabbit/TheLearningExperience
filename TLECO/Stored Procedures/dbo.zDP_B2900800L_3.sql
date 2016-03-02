SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900800L_3] (@BSSI_ChargeDescription_RS char(51), @BSSI_ChargeID_RS char(21), @BSSI_ChargeDescription_RE char(51), @BSSI_ChargeID_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_ChargeDescription_RS IS NULL BEGIN SELECT TOP 25  BSSI_ChargeID, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, NOTEINDX, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900800 ORDER BY BSSI_ChargeDescription DESC, BSSI_ChargeID DESC END ELSE IF @BSSI_ChargeDescription_RS = @BSSI_ChargeDescription_RE BEGIN SELECT TOP 25  BSSI_ChargeID, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, NOTEINDX, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900800 WHERE BSSI_ChargeDescription = @BSSI_ChargeDescription_RS AND BSSI_ChargeID BETWEEN @BSSI_ChargeID_RS AND @BSSI_ChargeID_RE ORDER BY BSSI_ChargeDescription DESC, BSSI_ChargeID DESC END ELSE BEGIN SELECT TOP 25  BSSI_ChargeID, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, NOTEINDX, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900800 WHERE BSSI_ChargeDescription BETWEEN @BSSI_ChargeDescription_RS AND @BSSI_ChargeDescription_RE AND BSSI_ChargeID BETWEEN @BSSI_ChargeID_RS AND @BSSI_ChargeID_RE ORDER BY BSSI_ChargeDescription DESC, BSSI_ChargeID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900800L_3] TO [DYNGRP]
GO
