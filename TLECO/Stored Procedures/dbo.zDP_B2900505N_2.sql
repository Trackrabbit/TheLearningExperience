SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900505N_2] (@BS int, @BSSI_Lease_Loan_Number char(17), @DEX_ROW_ID int, @BSSI_Lease_Loan_Number_RS char(17), @BSSI_Lease_Loan_Number_RE char(17)) AS /* 12.00.0311.000 */ set nocount on IF @BSSI_Lease_Loan_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_ChargeID, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_ChargeEffectingPymt, STRTDATE, BSSI_ChargeDuration, ENDDATE, From_Period, To_Period, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900505 WHERE ( BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Lease_Loan_Number > @BSSI_Lease_Loan_Number ) ORDER BY BSSI_Lease_Loan_Number ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Lease_Loan_Number_RS = @BSSI_Lease_Loan_Number_RE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_ChargeID, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_ChargeEffectingPymt, STRTDATE, BSSI_ChargeDuration, ENDDATE, From_Period, To_Period, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900505 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number_RS AND ( BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Lease_Loan_Number > @BSSI_Lease_Loan_Number ) ORDER BY BSSI_Lease_Loan_Number ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, BSSI_ChargeID, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_ChargeEffectingPymt, STRTDATE, BSSI_ChargeDuration, ENDDATE, From_Period, To_Period, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900505 WHERE BSSI_Lease_Loan_Number BETWEEN @BSSI_Lease_Loan_Number_RS AND @BSSI_Lease_Loan_Number_RE AND ( BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Lease_Loan_Number > @BSSI_Lease_Loan_Number ) ORDER BY BSSI_Lease_Loan_Number ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900505N_2] TO [DYNGRP]
GO
