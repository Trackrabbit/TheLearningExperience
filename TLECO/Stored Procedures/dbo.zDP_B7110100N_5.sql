SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7110100N_5] (@BS int, @SOPNUMBE char(21), @DEX_ROW_ID int, @SOPNUMBE_RS char(21), @SOPNUMBE_RE char(21)) AS /* 12.00.0311.000 */ set nocount on IF @SOPNUMBE_RS IS NULL BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Description, BSSI_Recognition_SOrigin, BSSI_Recognition_SchStat, NOTEINDX, SOPTYPE, SOPNUMBE, CMPNTSEQ, LNITMSEQ, ITEMNMBR, CUSTNMBR, DOCDATE, DISTTYPE, XTNDPRCE, DOCNUMBR, BSSI_Contract_Number, BSSI_Recog_TemplateID, STRTDATE, ENDDATE, BSSI_Prorate_All, BSSI_Equal_Per_Period, BSSI_Adjust_For_Prior, BSSI_New_Renew, BSSI_Offering_Type_ID, BSSI_Rev_Exp_Source_ID, BSSI_Order_Type_ID, BSSI_Deferral_Acct_Index, BSSI_On_Hold_Acct_Index, BSSI_Recog_Acct_Index, BSSI_Total_Length, BSSI_Total_Schedule_Amou, BSSI_Total_Amount_Recogn, BSSI_Total_Amount_Remain, BSSI_Credit_Memo, BSSI_Orig_Recog_Amt, BSSI_Adjustment_Amount, BSSI_Adj_Credit_Memo, ORIGTYPE, ORIGNUMB, BSSI_DefAccountCredit, BSSI_RecurringContractID, BSSI_RBLineSeqNumber, BSSI_Recog_Frequency, BSSI_ScheduleBasedOnDate, BSSI_RBTimesRecalculated, BSSI_Recog_Schedule_Type, BSSI_EBTemplateID, BSSI_Recog_Acct_Index1, LOCNCODE, DUMYRCRD, DEX_ROW_ID FROM .B7110100 WHERE ( SOPNUMBE = @SOPNUMBE AND DEX_ROW_ID > @DEX_ROW_ID OR SOPNUMBE > @SOPNUMBE ) ORDER BY SOPNUMBE ASC, DEX_ROW_ID ASC END ELSE IF @SOPNUMBE_RS = @SOPNUMBE_RE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Description, BSSI_Recognition_SOrigin, BSSI_Recognition_SchStat, NOTEINDX, SOPTYPE, SOPNUMBE, CMPNTSEQ, LNITMSEQ, ITEMNMBR, CUSTNMBR, DOCDATE, DISTTYPE, XTNDPRCE, DOCNUMBR, BSSI_Contract_Number, BSSI_Recog_TemplateID, STRTDATE, ENDDATE, BSSI_Prorate_All, BSSI_Equal_Per_Period, BSSI_Adjust_For_Prior, BSSI_New_Renew, BSSI_Offering_Type_ID, BSSI_Rev_Exp_Source_ID, BSSI_Order_Type_ID, BSSI_Deferral_Acct_Index, BSSI_On_Hold_Acct_Index, BSSI_Recog_Acct_Index, BSSI_Total_Length, BSSI_Total_Schedule_Amou, BSSI_Total_Amount_Recogn, BSSI_Total_Amount_Remain, BSSI_Credit_Memo, BSSI_Orig_Recog_Amt, BSSI_Adjustment_Amount, BSSI_Adj_Credit_Memo, ORIGTYPE, ORIGNUMB, BSSI_DefAccountCredit, BSSI_RecurringContractID, BSSI_RBLineSeqNumber, BSSI_Recog_Frequency, BSSI_ScheduleBasedOnDate, BSSI_RBTimesRecalculated, BSSI_Recog_Schedule_Type, BSSI_EBTemplateID, BSSI_Recog_Acct_Index1, LOCNCODE, DUMYRCRD, DEX_ROW_ID FROM .B7110100 WHERE SOPNUMBE = @SOPNUMBE_RS AND ( SOPNUMBE = @SOPNUMBE AND DEX_ROW_ID > @DEX_ROW_ID OR SOPNUMBE > @SOPNUMBE ) ORDER BY SOPNUMBE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Description, BSSI_Recognition_SOrigin, BSSI_Recognition_SchStat, NOTEINDX, SOPTYPE, SOPNUMBE, CMPNTSEQ, LNITMSEQ, ITEMNMBR, CUSTNMBR, DOCDATE, DISTTYPE, XTNDPRCE, DOCNUMBR, BSSI_Contract_Number, BSSI_Recog_TemplateID, STRTDATE, ENDDATE, BSSI_Prorate_All, BSSI_Equal_Per_Period, BSSI_Adjust_For_Prior, BSSI_New_Renew, BSSI_Offering_Type_ID, BSSI_Rev_Exp_Source_ID, BSSI_Order_Type_ID, BSSI_Deferral_Acct_Index, BSSI_On_Hold_Acct_Index, BSSI_Recog_Acct_Index, BSSI_Total_Length, BSSI_Total_Schedule_Amou, BSSI_Total_Amount_Recogn, BSSI_Total_Amount_Remain, BSSI_Credit_Memo, BSSI_Orig_Recog_Amt, BSSI_Adjustment_Amount, BSSI_Adj_Credit_Memo, ORIGTYPE, ORIGNUMB, BSSI_DefAccountCredit, BSSI_RecurringContractID, BSSI_RBLineSeqNumber, BSSI_Recog_Frequency, BSSI_ScheduleBasedOnDate, BSSI_RBTimesRecalculated, BSSI_Recog_Schedule_Type, BSSI_EBTemplateID, BSSI_Recog_Acct_Index1, LOCNCODE, DUMYRCRD, DEX_ROW_ID FROM .B7110100 WHERE SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND ( SOPNUMBE = @SOPNUMBE AND DEX_ROW_ID > @DEX_ROW_ID OR SOPNUMBE > @SOPNUMBE ) ORDER BY SOPNUMBE ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7110100N_5] TO [DYNGRP]
GO
