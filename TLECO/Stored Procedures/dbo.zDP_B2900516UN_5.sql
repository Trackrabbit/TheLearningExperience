SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900516UN_5] (@BS int, @LNITMSEQ int, @LNITMSEQ_RS int, @LNITMSEQ_RE int) AS /* 12.00.0311.000 */ set nocount on IF @LNITMSEQ_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, CUSTNMBR, SCHEDULE_NUMBER, SCH_DOC_DATE, BSSI_ChargeID, BSSI_RenewalNumber, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_ChargeEffectingPymt, STRTDATE, BSSI_ChargeDuration, ENDDATE, From_Period, To_Period, BSSI_Facility_ID, MKTOPROC, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, CHANGEBY_I, CHANGEDATE_I, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900516 WHERE ( LNITMSEQ > @LNITMSEQ ) ORDER BY LNITMSEQ ASC, DEX_ROW_ID ASC END ELSE IF @LNITMSEQ_RS = @LNITMSEQ_RE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, CUSTNMBR, SCHEDULE_NUMBER, SCH_DOC_DATE, BSSI_ChargeID, BSSI_RenewalNumber, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_ChargeEffectingPymt, STRTDATE, BSSI_ChargeDuration, ENDDATE, From_Period, To_Period, BSSI_Facility_ID, MKTOPROC, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, CHANGEBY_I, CHANGEDATE_I, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900516 WHERE LNITMSEQ = @LNITMSEQ_RS AND ( LNITMSEQ > @LNITMSEQ ) ORDER BY LNITMSEQ ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, CUSTNMBR, SCHEDULE_NUMBER, SCH_DOC_DATE, BSSI_ChargeID, BSSI_RenewalNumber, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_ChargeEffectingPymt, STRTDATE, BSSI_ChargeDuration, ENDDATE, From_Period, To_Period, BSSI_Facility_ID, MKTOPROC, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, CHANGEBY_I, CHANGEDATE_I, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900516 WHERE LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( LNITMSEQ > @LNITMSEQ ) ORDER BY LNITMSEQ ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900516UN_5] TO [DYNGRP]
GO
