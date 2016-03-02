SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900516SI] (@BSSI_Lease_Loan_Number char(17), @CUSTNMBR char(15), @SCHEDULE_NUMBER char(21), @SCH_DOC_DATE datetime, @BSSI_ChargeID char(21), @BSSI_RenewalNumber smallint, @BSSI_ChargeDescription char(51), @BSSI_ChargeAmt numeric(19,5), @BSSI_ChargeIncInLease tinyint, @LNITMSEQ int, @BSSI_ChargeAccountIndex int, @BSSI_ChargeExcludeIntCal tinyint, @BSSI_ChargeEffectingPymt int, @STRTDATE datetime, @BSSI_ChargeDuration smallint, @ENDDATE datetime, @From_Period smallint, @To_Period smallint, @BSSI_Facility_ID char(67), @MKTOPROC tinyint, @COMMENT_1 char(51), @COMMENT_2 char(51), @COMMENT_3 char(51), @COMMENT_4 char(51), @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @BSSI_EnableProrateExtraC tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .B2900516 (BSSI_Lease_Loan_Number, CUSTNMBR, SCHEDULE_NUMBER, SCH_DOC_DATE, BSSI_ChargeID, BSSI_RenewalNumber, BSSI_ChargeDescription, BSSI_ChargeAmt, BSSI_ChargeIncInLease, LNITMSEQ, BSSI_ChargeAccountIndex, BSSI_ChargeExcludeIntCal, BSSI_ChargeEffectingPymt, STRTDATE, BSSI_ChargeDuration, ENDDATE, From_Period, To_Period, BSSI_Facility_ID, MKTOPROC, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, CHANGEBY_I, CHANGEDATE_I, BSSI_EnableProrateExtraC) VALUES ( @BSSI_Lease_Loan_Number, @CUSTNMBR, @SCHEDULE_NUMBER, @SCH_DOC_DATE, @BSSI_ChargeID, @BSSI_RenewalNumber, @BSSI_ChargeDescription, @BSSI_ChargeAmt, @BSSI_ChargeIncInLease, @LNITMSEQ, @BSSI_ChargeAccountIndex, @BSSI_ChargeExcludeIntCal, @BSSI_ChargeEffectingPymt, @STRTDATE, @BSSI_ChargeDuration, @ENDDATE, @From_Period, @To_Period, @BSSI_Facility_ID, @MKTOPROC, @COMMENT_1, @COMMENT_2, @COMMENT_3, @COMMENT_4, @CHANGEBY_I, @CHANGEDATE_I, @BSSI_EnableProrateExtraC) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900516SI] TO [DYNGRP]
GO
