SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900515SI] (@BSSI_Lease_Loan_Number char(17), @BSSI_ChargeID char(21), @BSSI_RenewalNumber smallint, @BSSI_ChargeAmt numeric(19,5), @BSSI_ChargeIncInLease tinyint, @LNITMSEQ int, @BSSI_ChargeAccountIndex int, @BSSI_ChargeExcludeIntCal tinyint, @BSSI_ChargeEffectingPymt int, @STRTDATE datetime, @BSSI_ChargeDuration smallint, @ENDDATE datetime, @From_Period smallint, @To_Period smallint, @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @BSSI_EnableProrateExtraC tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .B2900515 (BSSI_Lease_Loan_Number, BSSI_ChargeID, BSSI_RenewalNumber, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_ChargeEffectingPymt, STRTDATE, BSSI_ChargeDuration, ENDDATE, From_Period, To_Period, CHANGEBY_I, CHANGEDATE_I, BSSI_EnableProrateExtraC) VALUES ( @BSSI_Lease_Loan_Number, @BSSI_ChargeID, @BSSI_RenewalNumber, @BSSI_ChargeAmt, @BSSI_ChargeIncInLease, @LNITMSEQ, @BSSI_ChargeAccountIndex, @BSSI_ChargeExcludeIntCal, @BSSI_ChargeEffectingPymt, @STRTDATE, @BSSI_ChargeDuration, @ENDDATE, @From_Period, @To_Period, @CHANGEBY_I, @CHANGEDATE_I, @BSSI_EnableProrateExtraC) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900515SI] TO [DYNGRP]
GO
