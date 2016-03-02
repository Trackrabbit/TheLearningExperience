SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7132101N_2] (@BS int, @DOCNUMBR char(21), @RMDTYPAL smallint, @DISTTYPE smallint, @SEQNUMBR int, @DOCNUMBR_RS char(21), @RMDTYPAL_RS smallint, @DISTTYPE_RS smallint, @SEQNUMBR_RS int, @DOCNUMBR_RE char(21), @RMDTYPAL_RE smallint, @DISTTYPE_RE smallint, @SEQNUMBR_RE int) AS /* 12.00.0270.000 */ set nocount on IF @DOCNUMBR_RS IS NULL BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Description, BSSI_Recognition_SOrigin, BSSI_Recognition_SchStat, NOTEINDX, RMDTYPAL, DOCNUMBR, ITEMNMBR, SEQNUMBR, CUSTNMBR, DOCDATE, DISTTYPE, XTNDPRCE, BSSI_Contract_Number, BSSI_Recog_TemplateID, STRTDATE, ENDDATE, BSSI_Prorate_All, BSSI_Equal_Per_Period, BSSI_Adjust_For_Prior, BSSI_New_Renew, BSSI_Offering_Type_ID, BSSI_Rev_Exp_Source_ID, BSSI_Order_Type_ID, BSSI_Deferral_Acct_Index, BSSI_On_Hold_Acct_Index, BSSI_Recog_Acct_Index, BSSI_Total_Length, BSSI_Total_Schedule_Amou, BSSI_Total_Amount_Recogn, BSSI_Total_Amount_Remain, BSSI_Credit_Memo, BSSI_Orig_Recog_Amt, BSSI_Adjustment_Amount, BSSI_Adj_Credit_Memo, BSSI_DefAccountCredit, TRXDSCRN, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, DEX_ROW_ID FROM .B7132101 WHERE ( DOCNUMBR = @DOCNUMBR AND RMDTYPAL = @RMDTYPAL AND DISTTYPE = @DISTTYPE AND SEQNUMBR > @SEQNUMBR OR DOCNUMBR = @DOCNUMBR AND RMDTYPAL = @RMDTYPAL AND DISTTYPE > @DISTTYPE OR DOCNUMBR = @DOCNUMBR AND RMDTYPAL > @RMDTYPAL OR DOCNUMBR > @DOCNUMBR ) ORDER BY DOCNUMBR ASC, RMDTYPAL ASC, DISTTYPE ASC, SEQNUMBR ASC END ELSE IF @DOCNUMBR_RS = @DOCNUMBR_RE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Description, BSSI_Recognition_SOrigin, BSSI_Recognition_SchStat, NOTEINDX, RMDTYPAL, DOCNUMBR, ITEMNMBR, SEQNUMBR, CUSTNMBR, DOCDATE, DISTTYPE, XTNDPRCE, BSSI_Contract_Number, BSSI_Recog_TemplateID, STRTDATE, ENDDATE, BSSI_Prorate_All, BSSI_Equal_Per_Period, BSSI_Adjust_For_Prior, BSSI_New_Renew, BSSI_Offering_Type_ID, BSSI_Rev_Exp_Source_ID, BSSI_Order_Type_ID, BSSI_Deferral_Acct_Index, BSSI_On_Hold_Acct_Index, BSSI_Recog_Acct_Index, BSSI_Total_Length, BSSI_Total_Schedule_Amou, BSSI_Total_Amount_Recogn, BSSI_Total_Amount_Remain, BSSI_Credit_Memo, BSSI_Orig_Recog_Amt, BSSI_Adjustment_Amount, BSSI_Adj_Credit_Memo, BSSI_DefAccountCredit, TRXDSCRN, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, DEX_ROW_ID FROM .B7132101 WHERE DOCNUMBR = @DOCNUMBR_RS AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( DOCNUMBR = @DOCNUMBR AND RMDTYPAL = @RMDTYPAL AND DISTTYPE = @DISTTYPE AND SEQNUMBR > @SEQNUMBR OR DOCNUMBR = @DOCNUMBR AND RMDTYPAL = @RMDTYPAL AND DISTTYPE > @DISTTYPE OR DOCNUMBR = @DOCNUMBR AND RMDTYPAL > @RMDTYPAL OR DOCNUMBR > @DOCNUMBR ) ORDER BY DOCNUMBR ASC, RMDTYPAL ASC, DISTTYPE ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Description, BSSI_Recognition_SOrigin, BSSI_Recognition_SchStat, NOTEINDX, RMDTYPAL, DOCNUMBR, ITEMNMBR, SEQNUMBR, CUSTNMBR, DOCDATE, DISTTYPE, XTNDPRCE, BSSI_Contract_Number, BSSI_Recog_TemplateID, STRTDATE, ENDDATE, BSSI_Prorate_All, BSSI_Equal_Per_Period, BSSI_Adjust_For_Prior, BSSI_New_Renew, BSSI_Offering_Type_ID, BSSI_Rev_Exp_Source_ID, BSSI_Order_Type_ID, BSSI_Deferral_Acct_Index, BSSI_On_Hold_Acct_Index, BSSI_Recog_Acct_Index, BSSI_Total_Length, BSSI_Total_Schedule_Amou, BSSI_Total_Amount_Recogn, BSSI_Total_Amount_Remain, BSSI_Credit_Memo, BSSI_Orig_Recog_Amt, BSSI_Adjustment_Amount, BSSI_Adj_Credit_Memo, BSSI_DefAccountCredit, TRXDSCRN, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, DEX_ROW_ID FROM .B7132101 WHERE DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( DOCNUMBR = @DOCNUMBR AND RMDTYPAL = @RMDTYPAL AND DISTTYPE = @DISTTYPE AND SEQNUMBR > @SEQNUMBR OR DOCNUMBR = @DOCNUMBR AND RMDTYPAL = @RMDTYPAL AND DISTTYPE > @DISTTYPE OR DOCNUMBR = @DOCNUMBR AND RMDTYPAL > @RMDTYPAL OR DOCNUMBR > @DOCNUMBR ) ORDER BY DOCNUMBR ASC, RMDTYPAL ASC, DISTTYPE ASC, SEQNUMBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7132101N_2] TO [DYNGRP]
GO
