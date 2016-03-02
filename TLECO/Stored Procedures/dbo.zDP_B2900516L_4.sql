SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900516L_4] (@CUSTNMBR_RS char(15), @CUSTNMBR_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, CUSTNMBR, SCHEDULE_NUMBER, SCH_DOC_DATE, BSSI_ChargeID, BSSI_RenewalNumber, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_ChargeEffectingPymt, STRTDATE, BSSI_ChargeDuration, ENDDATE, From_Period, To_Period, BSSI_Facility_ID, MKTOPROC, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, CHANGEBY_I, CHANGEDATE_I, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900516 ORDER BY CUSTNMBR DESC, DEX_ROW_ID DESC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, CUSTNMBR, SCHEDULE_NUMBER, SCH_DOC_DATE, BSSI_ChargeID, BSSI_RenewalNumber, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_ChargeEffectingPymt, STRTDATE, BSSI_ChargeDuration, ENDDATE, From_Period, To_Period, BSSI_Facility_ID, MKTOPROC, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, CHANGEBY_I, CHANGEDATE_I, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900516 WHERE CUSTNMBR = @CUSTNMBR_RS ORDER BY CUSTNMBR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, CUSTNMBR, SCHEDULE_NUMBER, SCH_DOC_DATE, BSSI_ChargeID, BSSI_RenewalNumber, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_ChargeEffectingPymt, STRTDATE, BSSI_ChargeDuration, ENDDATE, From_Period, To_Period, BSSI_Facility_ID, MKTOPROC, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, CHANGEBY_I, CHANGEDATE_I, BSSI_EnableProrateExtraC, DEX_ROW_ID FROM .B2900516 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY CUSTNMBR DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900516L_4] TO [DYNGRP]
GO
