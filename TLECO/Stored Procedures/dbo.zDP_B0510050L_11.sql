SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510050L_11] (@MJW_Certificate_Number_RS char(21), @MJW_Certificate_Number_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Certificate_Number_RS IS NULL BEGIN SELECT TOP 25  MJW_Investment_Number, MJW_Source, BSSI_Investment_Ref, MJW_Offering_ID, MJW_Series_ID, MJW_Accept_Date, MJW_Admit_Date, IMS_Commission_Paid_Date, VENDORID, MJW_Owner_Type_Code, MJW_Certificate_Number, MJW_Cancellation_Date, MJW_Closing_Date, MJW_Death_Date, BSSI_InvestPercent, MJW_Units_Purchased, MJW_Unit_Price, MJW_Units_Sold, MJW_Original_Capital, MJW_Return_Capital, MJW_Transfer_Date, MJW_Transfer_Number, MJW_Redemption_Number, SLPRSNID, IMS_Broker_ID, IMS_With_Holding_Account_1, IMS_With_Holding_Account_2, IMS_With_Holding_Account_3, IMS_With_Holding_Account_4, MJW_Adjusted_Capital, BSSI_Reinvest_CB, BSSI_Facility_ID, NOTEINDX, CURNCYID, CURRNIDX, BSSI_InvestCategoryID, BSSI_InvestmentType, BSSI_InvestBearing, BSSI_AccrualsAcctIdx, REALGAIN, REALLOSS, UNRLGAIN, UNRLLOSS, OFFINDX, BSSI_LastRevaluationAmou, SCHEDULE_INT_TYPE1, SCHEDULE_NUMBER, REC_ACCT_IDX, INT_INCOME_ACCT_IDX, ORIG_DOC_NUMBER, REC_OFFSET_ACCT_IDX, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, RMDNUMWK, VCHNUMWK, BSSI_IntrIncAccrAcctIdx, BSSI_IntrExpAccrAcctIdx, BSSI_AccrdIntrIncAcctIdx, BSSI_AccrdIntrExpAcctIdx, BSSI_Investor_AP_Number, BSSI_Investor_AR_Number, BSSI_InvestOrFund, DEX_ROW_ID FROM .B0510050 ORDER BY MJW_Certificate_Number DESC END ELSE IF @MJW_Certificate_Number_RS = @MJW_Certificate_Number_RE BEGIN SELECT TOP 25  MJW_Investment_Number, MJW_Source, BSSI_Investment_Ref, MJW_Offering_ID, MJW_Series_ID, MJW_Accept_Date, MJW_Admit_Date, IMS_Commission_Paid_Date, VENDORID, MJW_Owner_Type_Code, MJW_Certificate_Number, MJW_Cancellation_Date, MJW_Closing_Date, MJW_Death_Date, BSSI_InvestPercent, MJW_Units_Purchased, MJW_Unit_Price, MJW_Units_Sold, MJW_Original_Capital, MJW_Return_Capital, MJW_Transfer_Date, MJW_Transfer_Number, MJW_Redemption_Number, SLPRSNID, IMS_Broker_ID, IMS_With_Holding_Account_1, IMS_With_Holding_Account_2, IMS_With_Holding_Account_3, IMS_With_Holding_Account_4, MJW_Adjusted_Capital, BSSI_Reinvest_CB, BSSI_Facility_ID, NOTEINDX, CURNCYID, CURRNIDX, BSSI_InvestCategoryID, BSSI_InvestmentType, BSSI_InvestBearing, BSSI_AccrualsAcctIdx, REALGAIN, REALLOSS, UNRLGAIN, UNRLLOSS, OFFINDX, BSSI_LastRevaluationAmou, SCHEDULE_INT_TYPE1, SCHEDULE_NUMBER, REC_ACCT_IDX, INT_INCOME_ACCT_IDX, ORIG_DOC_NUMBER, REC_OFFSET_ACCT_IDX, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, RMDNUMWK, VCHNUMWK, BSSI_IntrIncAccrAcctIdx, BSSI_IntrExpAccrAcctIdx, BSSI_AccrdIntrIncAcctIdx, BSSI_AccrdIntrExpAcctIdx, BSSI_Investor_AP_Number, BSSI_Investor_AR_Number, BSSI_InvestOrFund, DEX_ROW_ID FROM .B0510050 WHERE MJW_Certificate_Number = @MJW_Certificate_Number_RS ORDER BY MJW_Certificate_Number DESC END ELSE BEGIN SELECT TOP 25  MJW_Investment_Number, MJW_Source, BSSI_Investment_Ref, MJW_Offering_ID, MJW_Series_ID, MJW_Accept_Date, MJW_Admit_Date, IMS_Commission_Paid_Date, VENDORID, MJW_Owner_Type_Code, MJW_Certificate_Number, MJW_Cancellation_Date, MJW_Closing_Date, MJW_Death_Date, BSSI_InvestPercent, MJW_Units_Purchased, MJW_Unit_Price, MJW_Units_Sold, MJW_Original_Capital, MJW_Return_Capital, MJW_Transfer_Date, MJW_Transfer_Number, MJW_Redemption_Number, SLPRSNID, IMS_Broker_ID, IMS_With_Holding_Account_1, IMS_With_Holding_Account_2, IMS_With_Holding_Account_3, IMS_With_Holding_Account_4, MJW_Adjusted_Capital, BSSI_Reinvest_CB, BSSI_Facility_ID, NOTEINDX, CURNCYID, CURRNIDX, BSSI_InvestCategoryID, BSSI_InvestmentType, BSSI_InvestBearing, BSSI_AccrualsAcctIdx, REALGAIN, REALLOSS, UNRLGAIN, UNRLLOSS, OFFINDX, BSSI_LastRevaluationAmou, SCHEDULE_INT_TYPE1, SCHEDULE_NUMBER, REC_ACCT_IDX, INT_INCOME_ACCT_IDX, ORIG_DOC_NUMBER, REC_OFFSET_ACCT_IDX, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, RMDNUMWK, VCHNUMWK, BSSI_IntrIncAccrAcctIdx, BSSI_IntrExpAccrAcctIdx, BSSI_AccrdIntrIncAcctIdx, BSSI_AccrdIntrExpAcctIdx, BSSI_Investor_AP_Number, BSSI_Investor_AR_Number, BSSI_InvestOrFund, DEX_ROW_ID FROM .B0510050 WHERE MJW_Certificate_Number BETWEEN @MJW_Certificate_Number_RS AND @MJW_Certificate_Number_RE ORDER BY MJW_Certificate_Number DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510050L_11] TO [DYNGRP]
GO
