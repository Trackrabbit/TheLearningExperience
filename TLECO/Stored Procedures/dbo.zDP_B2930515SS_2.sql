SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930515SS_2] (@BSSI_Lease_Loan_Number char(17)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  BSSI_Lease_Loan_Number, BSSI_ChargeID, BSSI_RenewalNumber, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_ChargeEffectingPymt, STRTDATE, BSSI_ChargeDuration, ENDDATE, From_Period, To_Period, CHANGEBY_I, CHANGEDATE_I, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2930515 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number ORDER BY BSSI_Lease_Loan_Number ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930515SS_2] TO [DYNGRP]
GO
