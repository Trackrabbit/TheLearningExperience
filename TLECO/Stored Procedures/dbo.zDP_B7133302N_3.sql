SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7133302N_3] (@BS int, @SOPTYPE smallint, @SOPNUMBE char(21), @BSSI_BundleID char(25), @DEX_ROW_ID int, @SOPTYPE_RS smallint, @SOPNUMBE_RS char(21), @BSSI_BundleID_RS char(25), @SOPTYPE_RE smallint, @SOPNUMBE_RE char(21), @BSSI_BundleID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @SOPTYPE_RS IS NULL BEGIN SELECT TOP 25  SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, BSSI_DeferralStartDate, BSSI_DeferralEndDate, BSSI_Recog_TemplateID, BSSI_Contract_Number, BSSI_RBLineSeqNumber, DOCDATE, BSSI_Deferrable, BSSI_Recog_Acct_Index, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, BSSI_CreateOneSchedule, BSSI_RBLineTotalAmount, BSSI_BundleID, BSSI_DefaultExtPrice, BSSI_DefaultExtPriceOrig, XTNDPRCE, OXTNDPRC, BSSI_VSOEExtPrice, BSSI_VSOEExtPriceOrig, BSSI_AREDContract_Number, BSSI_DefaultDefStartDt1, BSSI_EBTemplateID, QUANTITY, BSSI_EBOnQty, BSSI_EBRecog_Methods, BSSI_Recog_Acct_Index1, BSSI_Recognition_Amount, DEX_ROW_ID FROM .B7133302 WHERE ( SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND BSSI_BundleID = @BSSI_BundleID AND DEX_ROW_ID > @DEX_ROW_ID OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND BSSI_BundleID > @BSSI_BundleID OR SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC, SOPNUMBE ASC, BSSI_BundleID ASC, DEX_ROW_ID ASC END ELSE IF @SOPTYPE_RS = @SOPTYPE_RE BEGIN SELECT TOP 25  SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, BSSI_DeferralStartDate, BSSI_DeferralEndDate, BSSI_Recog_TemplateID, BSSI_Contract_Number, BSSI_RBLineSeqNumber, DOCDATE, BSSI_Deferrable, BSSI_Recog_Acct_Index, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, BSSI_CreateOneSchedule, BSSI_RBLineTotalAmount, BSSI_BundleID, BSSI_DefaultExtPrice, BSSI_DefaultExtPriceOrig, XTNDPRCE, OXTNDPRC, BSSI_VSOEExtPrice, BSSI_VSOEExtPriceOrig, BSSI_AREDContract_Number, BSSI_DefaultDefStartDt1, BSSI_EBTemplateID, QUANTITY, BSSI_EBOnQty, BSSI_EBRecog_Methods, BSSI_Recog_Acct_Index1, BSSI_Recognition_Amount, DEX_ROW_ID FROM .B7133302 WHERE SOPTYPE = @SOPTYPE_RS AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND BSSI_BundleID BETWEEN @BSSI_BundleID_RS AND @BSSI_BundleID_RE AND ( SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND BSSI_BundleID = @BSSI_BundleID AND DEX_ROW_ID > @DEX_ROW_ID OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND BSSI_BundleID > @BSSI_BundleID OR SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC, SOPNUMBE ASC, BSSI_BundleID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, BSSI_DeferralStartDate, BSSI_DeferralEndDate, BSSI_Recog_TemplateID, BSSI_Contract_Number, BSSI_RBLineSeqNumber, DOCDATE, BSSI_Deferrable, BSSI_Recog_Acct_Index, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, BSSI_CreateOneSchedule, BSSI_RBLineTotalAmount, BSSI_BundleID, BSSI_DefaultExtPrice, BSSI_DefaultExtPriceOrig, XTNDPRCE, OXTNDPRC, BSSI_VSOEExtPrice, BSSI_VSOEExtPriceOrig, BSSI_AREDContract_Number, BSSI_DefaultDefStartDt1, BSSI_EBTemplateID, QUANTITY, BSSI_EBOnQty, BSSI_EBRecog_Methods, BSSI_Recog_Acct_Index1, BSSI_Recognition_Amount, DEX_ROW_ID FROM .B7133302 WHERE SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND BSSI_BundleID BETWEEN @BSSI_BundleID_RS AND @BSSI_BundleID_RE AND ( SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND BSSI_BundleID = @BSSI_BundleID AND DEX_ROW_ID > @DEX_ROW_ID OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND BSSI_BundleID > @BSSI_BundleID OR SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC, SOPNUMBE ASC, BSSI_BundleID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7133302N_3] TO [DYNGRP]
GO
