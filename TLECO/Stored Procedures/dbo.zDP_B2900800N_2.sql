SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900800N_2] (@BS int, @BSSI_ChargeDescription char(51), @DEX_ROW_ID int, @BSSI_ChargeDescription_RS char(51), @BSSI_ChargeDescription_RE char(51)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_ChargeDescription_RS IS NULL BEGIN SELECT TOP 25  BSSI_ChargeID, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, NOTEINDX, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900800 WHERE ( BSSI_ChargeDescription = @BSSI_ChargeDescription AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_ChargeDescription > @BSSI_ChargeDescription ) ORDER BY BSSI_ChargeDescription ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_ChargeDescription_RS = @BSSI_ChargeDescription_RE BEGIN SELECT TOP 25  BSSI_ChargeID, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, NOTEINDX, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900800 WHERE BSSI_ChargeDescription = @BSSI_ChargeDescription_RS AND ( BSSI_ChargeDescription = @BSSI_ChargeDescription AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_ChargeDescription > @BSSI_ChargeDescription ) ORDER BY BSSI_ChargeDescription ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_ChargeID, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, NOTEINDX, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900800 WHERE BSSI_ChargeDescription BETWEEN @BSSI_ChargeDescription_RS AND @BSSI_ChargeDescription_RE AND ( BSSI_ChargeDescription = @BSSI_ChargeDescription AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_ChargeDescription > @BSSI_ChargeDescription ) ORDER BY BSSI_ChargeDescription ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900800N_2] TO [DYNGRP]
GO
