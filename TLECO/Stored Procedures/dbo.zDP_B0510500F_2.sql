SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510500F_2] (@DSCRIPTN_RS char(31), @DSCRIPTN_RE char(31)) AS /* 12.00.0270.000 */ set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  BSSI_Capital_Call_ID, DSCRIPTN, BSSI_Facility_ID, MJW_Offering_ID, BSSI_Fund_Owner_ID, MJW_Series_ID, DOCDATE, BSSI_Capital_Status_HDR, BSSI_Broker_ID, BSSI_Fund_Call_AP_Number, BSSI_Fund_Call_Amount, CURNCYID, CURRNIDX, BSSI_CommPaymentMethod, BSSI_Commission_Type, BSSI_Commission_Amount, BSSI_Commission_Percent, BSSI_Fee_Amount, BSSI_Owner_Call_Date, BSSI_Owner_Info_Date, BSSI_Owner_Due_Date, BSSI_Owner_Maturity_Date, BSSI_Broker_Info_Date, BSSI_FundCallMaturityAmt, BSSI_Fund_Call_AP_Batch, BSSI_Fund_Call_AR_Number, BSSI_Total_Investment_Am, SLPRSNID, NOTEINDX, BSSI_AccrualsAcctIdx, REALGAIN, REALLOSS, UNRLGAIN, UNRLLOSS, OFFINDX, REC_ACCT_IDX, INT_INCOME_ACCT_IDX, REC_OFFSET_ACCT_IDX, BSSI_Skip_Request, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, BSSI_IntrExpAccrAcctIdx, BSSI_IntrIncAccrAcctIdx, BSSI_AccrdIntrExpAcctIdx, BSSI_AccrdIntrIncAcctIdx, DEX_ROW_ID FROM .B0510500 ORDER BY DSCRIPTN ASC, DEX_ROW_ID ASC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  BSSI_Capital_Call_ID, DSCRIPTN, BSSI_Facility_ID, MJW_Offering_ID, BSSI_Fund_Owner_ID, MJW_Series_ID, DOCDATE, BSSI_Capital_Status_HDR, BSSI_Broker_ID, BSSI_Fund_Call_AP_Number, BSSI_Fund_Call_Amount, CURNCYID, CURRNIDX, BSSI_CommPaymentMethod, BSSI_Commission_Type, BSSI_Commission_Amount, BSSI_Commission_Percent, BSSI_Fee_Amount, BSSI_Owner_Call_Date, BSSI_Owner_Info_Date, BSSI_Owner_Due_Date, BSSI_Owner_Maturity_Date, BSSI_Broker_Info_Date, BSSI_FundCallMaturityAmt, BSSI_Fund_Call_AP_Batch, BSSI_Fund_Call_AR_Number, BSSI_Total_Investment_Am, SLPRSNID, NOTEINDX, BSSI_AccrualsAcctIdx, REALGAIN, REALLOSS, UNRLGAIN, UNRLLOSS, OFFINDX, REC_ACCT_IDX, INT_INCOME_ACCT_IDX, REC_OFFSET_ACCT_IDX, BSSI_Skip_Request, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, BSSI_IntrExpAccrAcctIdx, BSSI_IntrIncAccrAcctIdx, BSSI_AccrdIntrExpAcctIdx, BSSI_AccrdIntrIncAcctIdx, DEX_ROW_ID FROM .B0510500 WHERE DSCRIPTN = @DSCRIPTN_RS ORDER BY DSCRIPTN ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Capital_Call_ID, DSCRIPTN, BSSI_Facility_ID, MJW_Offering_ID, BSSI_Fund_Owner_ID, MJW_Series_ID, DOCDATE, BSSI_Capital_Status_HDR, BSSI_Broker_ID, BSSI_Fund_Call_AP_Number, BSSI_Fund_Call_Amount, CURNCYID, CURRNIDX, BSSI_CommPaymentMethod, BSSI_Commission_Type, BSSI_Commission_Amount, BSSI_Commission_Percent, BSSI_Fee_Amount, BSSI_Owner_Call_Date, BSSI_Owner_Info_Date, BSSI_Owner_Due_Date, BSSI_Owner_Maturity_Date, BSSI_Broker_Info_Date, BSSI_FundCallMaturityAmt, BSSI_Fund_Call_AP_Batch, BSSI_Fund_Call_AR_Number, BSSI_Total_Investment_Am, SLPRSNID, NOTEINDX, BSSI_AccrualsAcctIdx, REALGAIN, REALLOSS, UNRLGAIN, UNRLLOSS, OFFINDX, REC_ACCT_IDX, INT_INCOME_ACCT_IDX, REC_OFFSET_ACCT_IDX, BSSI_Skip_Request, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, BSSI_IntrExpAccrAcctIdx, BSSI_IntrIncAccrAcctIdx, BSSI_AccrdIntrExpAcctIdx, BSSI_AccrdIntrIncAcctIdx, DEX_ROW_ID FROM .B0510500 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE ORDER BY DSCRIPTN ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510500F_2] TO [DYNGRP]
GO
