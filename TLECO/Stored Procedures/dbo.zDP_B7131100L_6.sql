SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7131100L_6] (@POPRCTNM_RS char(17), @CURNCYID_RS char(15), @VENDORID_RS char(15), @DISTTYPE_RS smallint, @ACTINDX_RS int, @XCHGRATE_RS numeric(19,7), @RCPTLNNM_RS int, @POPRCTNM_RE char(17), @CURNCYID_RE char(15), @VENDORID_RE char(15), @DISTTYPE_RE smallint, @ACTINDX_RE int, @XCHGRATE_RE numeric(19,7), @RCPTLNNM_RE int) AS /* 12.00.0270.000 */ set nocount on IF @POPRCTNM_RS IS NULL BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Description, BSSI_Recognition_SOrigin, BSSI_Recognition_SchStat, NOTEINDX, POPRCTNM, RCPTLNNM, ITEMNMBR, VENDORID, DOCDATE, XTNDPRCE, VCHRNMBR, DISTTYPE, BSSI_Contract_Number, BSSI_Recog_TemplateID, STRTDATE, ENDDATE, BSSI_Prorate_All, BSSI_Equal_Per_Period, BSSI_New_Renew, BSSI_Adjust_For_Prior, BSSI_Offering_Type_ID, BSSI_Rev_Exp_Source_ID, BSSI_Order_Type_ID, BSSI_Deferral_Acct_Index, BSSI_On_Hold_Acct_Index, BSSI_Recog_Acct_Index, BSSI_Total_Length, BSSI_Total_Schedule_Amou, BSSI_Total_Amount_Recogn, BSSI_Total_Amount_Remain, BSSI_Credit_Memo, BSSI_Orig_Recog_Amt, BSSI_Adjustment_Amount, BSSI_Adj_Credit_Memo, CURNCYID, ACTINDX, XCHGRATE, BSSI_DefAccountCredit, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, DEX_ROW_ID FROM .B7131100 ORDER BY POPRCTNM DESC, CURNCYID DESC, VENDORID DESC, DISTTYPE DESC, ACTINDX DESC, XCHGRATE DESC, RCPTLNNM DESC END ELSE IF @POPRCTNM_RS = @POPRCTNM_RE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Description, BSSI_Recognition_SOrigin, BSSI_Recognition_SchStat, NOTEINDX, POPRCTNM, RCPTLNNM, ITEMNMBR, VENDORID, DOCDATE, XTNDPRCE, VCHRNMBR, DISTTYPE, BSSI_Contract_Number, BSSI_Recog_TemplateID, STRTDATE, ENDDATE, BSSI_Prorate_All, BSSI_Equal_Per_Period, BSSI_New_Renew, BSSI_Adjust_For_Prior, BSSI_Offering_Type_ID, BSSI_Rev_Exp_Source_ID, BSSI_Order_Type_ID, BSSI_Deferral_Acct_Index, BSSI_On_Hold_Acct_Index, BSSI_Recog_Acct_Index, BSSI_Total_Length, BSSI_Total_Schedule_Amou, BSSI_Total_Amount_Recogn, BSSI_Total_Amount_Remain, BSSI_Credit_Memo, BSSI_Orig_Recog_Amt, BSSI_Adjustment_Amount, BSSI_Adj_Credit_Memo, CURNCYID, ACTINDX, XCHGRATE, BSSI_DefAccountCredit, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, DEX_ROW_ID FROM .B7131100 WHERE POPRCTNM = @POPRCTNM_RS AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND XCHGRATE BETWEEN @XCHGRATE_RS AND @XCHGRATE_RE AND RCPTLNNM BETWEEN @RCPTLNNM_RS AND @RCPTLNNM_RE ORDER BY POPRCTNM DESC, CURNCYID DESC, VENDORID DESC, DISTTYPE DESC, ACTINDX DESC, XCHGRATE DESC, RCPTLNNM DESC END ELSE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Description, BSSI_Recognition_SOrigin, BSSI_Recognition_SchStat, NOTEINDX, POPRCTNM, RCPTLNNM, ITEMNMBR, VENDORID, DOCDATE, XTNDPRCE, VCHRNMBR, DISTTYPE, BSSI_Contract_Number, BSSI_Recog_TemplateID, STRTDATE, ENDDATE, BSSI_Prorate_All, BSSI_Equal_Per_Period, BSSI_New_Renew, BSSI_Adjust_For_Prior, BSSI_Offering_Type_ID, BSSI_Rev_Exp_Source_ID, BSSI_Order_Type_ID, BSSI_Deferral_Acct_Index, BSSI_On_Hold_Acct_Index, BSSI_Recog_Acct_Index, BSSI_Total_Length, BSSI_Total_Schedule_Amou, BSSI_Total_Amount_Recogn, BSSI_Total_Amount_Remain, BSSI_Credit_Memo, BSSI_Orig_Recog_Amt, BSSI_Adjustment_Amount, BSSI_Adj_Credit_Memo, CURNCYID, ACTINDX, XCHGRATE, BSSI_DefAccountCredit, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, DEX_ROW_ID FROM .B7131100 WHERE POPRCTNM BETWEEN @POPRCTNM_RS AND @POPRCTNM_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND XCHGRATE BETWEEN @XCHGRATE_RS AND @XCHGRATE_RE AND RCPTLNNM BETWEEN @RCPTLNNM_RS AND @RCPTLNNM_RE ORDER BY POPRCTNM DESC, CURNCYID DESC, VENDORID DESC, DISTTYPE DESC, ACTINDX DESC, XCHGRATE DESC, RCPTLNNM DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7131100L_6] TO [DYNGRP]
GO
