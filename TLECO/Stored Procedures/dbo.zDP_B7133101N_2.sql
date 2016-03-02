SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7133101N_2] (@BS int, @VCHRNMBR char(21), @CNTRLTYP smallint, @APTVCHNM char(21), @SPCLDIST smallint, @DSTSQNUM int, @DEX_ROW_ID int, @VCHRNMBR_RS char(21), @CNTRLTYP_RS smallint, @APTVCHNM_RS char(21), @SPCLDIST_RS smallint, @DSTSQNUM_RS int, @VCHRNMBR_RE char(21), @CNTRLTYP_RE smallint, @APTVCHNM_RE char(21), @SPCLDIST_RE smallint, @DSTSQNUM_RE int) AS /* 12.00.0270.000 */ set nocount on IF @VCHRNMBR_RS IS NULL BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Description, BSSI_Recognition_SOrigin, BSSI_Recognition_SchStat, NOTEINDX, VCHRNMBR, DSTSQNUM, ITEMNMBR, VENDORID, DOCDATE, DISTTYPE, XTNDPRCE, BSSI_Contract_Number, BSSI_Recog_TemplateID, STRTDATE, ENDDATE, BSSI_Prorate_All, BSSI_Equal_Per_Period, BSSI_Adjust_For_Prior, BSSI_New_Renew, BSSI_Offering_Type_ID, BSSI_Rev_Exp_Source_ID, BSSI_Order_Type_ID, BSSI_Deferral_Acct_Index, BSSI_On_Hold_Acct_Index, BSSI_Recog_Acct_Index, BSSI_Total_Length, BSSI_Total_Schedule_Amou, BSSI_Total_Amount_Recogn, BSSI_Total_Amount_Remain, BSSI_Credit_Memo, BSSI_Orig_Recog_Amt, BSSI_Adjustment_Amount, BSSI_Adj_Credit_Memo, CNTRLTYP, APTVCHNM, SPCLDIST, BSSI_DefAccountCredit, DOCTYPE, TRXDSCRN, DUMYRCRD, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, DEX_ROW_ID FROM .B7133101 WHERE ( VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST = @SPCLDIST AND DSTSQNUM = @DSTSQNUM AND DEX_ROW_ID > @DEX_ROW_ID OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST = @SPCLDIST AND DSTSQNUM > @DSTSQNUM OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST > @SPCLDIST OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM > @APTVCHNM OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP > @CNTRLTYP OR VCHRNMBR > @VCHRNMBR ) ORDER BY VCHRNMBR ASC, CNTRLTYP ASC, APTVCHNM ASC, SPCLDIST ASC, DSTSQNUM ASC, DEX_ROW_ID ASC END ELSE IF @VCHRNMBR_RS = @VCHRNMBR_RE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Description, BSSI_Recognition_SOrigin, BSSI_Recognition_SchStat, NOTEINDX, VCHRNMBR, DSTSQNUM, ITEMNMBR, VENDORID, DOCDATE, DISTTYPE, XTNDPRCE, BSSI_Contract_Number, BSSI_Recog_TemplateID, STRTDATE, ENDDATE, BSSI_Prorate_All, BSSI_Equal_Per_Period, BSSI_Adjust_For_Prior, BSSI_New_Renew, BSSI_Offering_Type_ID, BSSI_Rev_Exp_Source_ID, BSSI_Order_Type_ID, BSSI_Deferral_Acct_Index, BSSI_On_Hold_Acct_Index, BSSI_Recog_Acct_Index, BSSI_Total_Length, BSSI_Total_Schedule_Amou, BSSI_Total_Amount_Recogn, BSSI_Total_Amount_Remain, BSSI_Credit_Memo, BSSI_Orig_Recog_Amt, BSSI_Adjustment_Amount, BSSI_Adj_Credit_Memo, CNTRLTYP, APTVCHNM, SPCLDIST, BSSI_DefAccountCredit, DOCTYPE, TRXDSCRN, DUMYRCRD, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, DEX_ROW_ID FROM .B7133101 WHERE VCHRNMBR = @VCHRNMBR_RS AND CNTRLTYP BETWEEN @CNTRLTYP_RS AND @CNTRLTYP_RE AND APTVCHNM BETWEEN @APTVCHNM_RS AND @APTVCHNM_RE AND SPCLDIST BETWEEN @SPCLDIST_RS AND @SPCLDIST_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE AND ( VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST = @SPCLDIST AND DSTSQNUM = @DSTSQNUM AND DEX_ROW_ID > @DEX_ROW_ID OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST = @SPCLDIST AND DSTSQNUM > @DSTSQNUM OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST > @SPCLDIST OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM > @APTVCHNM OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP > @CNTRLTYP OR VCHRNMBR > @VCHRNMBR ) ORDER BY VCHRNMBR ASC, CNTRLTYP ASC, APTVCHNM ASC, SPCLDIST ASC, DSTSQNUM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Description, BSSI_Recognition_SOrigin, BSSI_Recognition_SchStat, NOTEINDX, VCHRNMBR, DSTSQNUM, ITEMNMBR, VENDORID, DOCDATE, DISTTYPE, XTNDPRCE, BSSI_Contract_Number, BSSI_Recog_TemplateID, STRTDATE, ENDDATE, BSSI_Prorate_All, BSSI_Equal_Per_Period, BSSI_Adjust_For_Prior, BSSI_New_Renew, BSSI_Offering_Type_ID, BSSI_Rev_Exp_Source_ID, BSSI_Order_Type_ID, BSSI_Deferral_Acct_Index, BSSI_On_Hold_Acct_Index, BSSI_Recog_Acct_Index, BSSI_Total_Length, BSSI_Total_Schedule_Amou, BSSI_Total_Amount_Recogn, BSSI_Total_Amount_Remain, BSSI_Credit_Memo, BSSI_Orig_Recog_Amt, BSSI_Adjustment_Amount, BSSI_Adj_Credit_Memo, CNTRLTYP, APTVCHNM, SPCLDIST, BSSI_DefAccountCredit, DOCTYPE, TRXDSCRN, DUMYRCRD, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, DEX_ROW_ID FROM .B7133101 WHERE VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND CNTRLTYP BETWEEN @CNTRLTYP_RS AND @CNTRLTYP_RE AND APTVCHNM BETWEEN @APTVCHNM_RS AND @APTVCHNM_RE AND SPCLDIST BETWEEN @SPCLDIST_RS AND @SPCLDIST_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE AND ( VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST = @SPCLDIST AND DSTSQNUM = @DSTSQNUM AND DEX_ROW_ID > @DEX_ROW_ID OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST = @SPCLDIST AND DSTSQNUM > @DSTSQNUM OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM = @APTVCHNM AND SPCLDIST > @SPCLDIST OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP = @CNTRLTYP AND APTVCHNM > @APTVCHNM OR VCHRNMBR = @VCHRNMBR AND CNTRLTYP > @CNTRLTYP OR VCHRNMBR > @VCHRNMBR ) ORDER BY VCHRNMBR ASC, CNTRLTYP ASC, APTVCHNM ASC, SPCLDIST ASC, DSTSQNUM ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7133101N_2] TO [DYNGRP]
GO
