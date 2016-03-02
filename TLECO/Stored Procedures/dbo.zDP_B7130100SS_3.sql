SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7130100SS_3] (@BSSI_Description char(51)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  BSSI_Recognition_SNumber, BSSI_Description, BSSI_Recognition_SOrigin, BSSI_Recognition_SchStat, NOTEINDX, SOPTYPE, SOPNUMBE, CMPNTSEQ, LNITMSEQ, ITEMNMBR, CUSTNMBR, DOCDATE, DISTTYPE, XTNDPRCE, DOCNUMBR, BSSI_Contract_Number, BSSI_Recog_TemplateID, STRTDATE, ENDDATE, BSSI_Prorate_All, BSSI_Equal_Per_Period, BSSI_Adjust_For_Prior, BSSI_New_Renew, BSSI_Offering_Type_ID, BSSI_Rev_Exp_Source_ID, BSSI_Order_Type_ID, BSSI_Deferral_Acct_Index, BSSI_On_Hold_Acct_Index, BSSI_Recog_Acct_Index, BSSI_Total_Length, BSSI_Total_Schedule_Amou, BSSI_Total_Amount_Recogn, BSSI_Total_Amount_Remain, BSSI_Credit_Memo, BSSI_Orig_Recog_Amt, BSSI_Adjustment_Amount, BSSI_Adj_Credit_Memo, ORIGTYPE, ORIGNUMB, BSSI_DefAccountCredit, BSSI_RecurringContractID, BSSI_RBLineSeqNumber, BSSI_Recog_Frequency, BSSI_ScheduleBasedOnDate, BSSI_RBTimesRecalculated, BSSI_Recog_Schedule_Type, BSSI_EBTemplateID, LOCNCODE, DUMYRCRD, DEX_ROW_ID FROM .B7130100 WHERE BSSI_Description = @BSSI_Description ORDER BY BSSI_Description ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7130100SS_3] TO [DYNGRP]
GO
