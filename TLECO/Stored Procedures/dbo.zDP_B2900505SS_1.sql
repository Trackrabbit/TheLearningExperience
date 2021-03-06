SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900505SS_1] (@BSSI_Lease_Loan_Number char(17), @BSSI_ChargeID char(21), @LNITMSEQ int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  BSSI_Lease_Loan_Number, BSSI_ChargeID, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_ChargeEffectingPymt, STRTDATE, BSSI_ChargeDuration, ENDDATE, From_Period, To_Period, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900505 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number AND BSSI_ChargeID = @BSSI_ChargeID AND LNITMSEQ = @LNITMSEQ ORDER BY BSSI_Lease_Loan_Number ASC, BSSI_ChargeID ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900505SS_1] TO [DYNGRP]
GO
