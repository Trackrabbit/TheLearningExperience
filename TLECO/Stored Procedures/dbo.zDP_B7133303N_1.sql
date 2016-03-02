SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7133303N_1] (@BS int, @SOPNUMBE char(21), @SOPTYPE smallint, @LNITMSEQ int, @CMPNTSEQ int, @SOPNUMBE_RS char(21), @SOPTYPE_RS smallint, @LNITMSEQ_RS int, @CMPNTSEQ_RS int, @SOPNUMBE_RE char(21), @SOPTYPE_RE smallint, @LNITMSEQ_RE int, @CMPNTSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @SOPNUMBE_RS IS NULL BEGIN SELECT TOP 25  SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, BSSI_DeferralStartDate, BSSI_DeferralEndDate, BSSI_Recog_TemplateID, BSSI_Contract_Number, BSSI_RBLineSeqNumber, DOCDATE, BSSI_Deferrable, BSSI_Recog_Acct_Index, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, BSSI_CreateOneSchedule, BSSI_RBLineTotalAmount, BSSI_BundleID, BSSI_DefaultExtPrice, BSSI_DefaultExtPriceOrig, XTNDPRCE, OXTNDPRC, BSSI_VSOEExtPrice, BSSI_VSOEExtPriceOrig, BSSI_AREDContract_Number, BSSI_DefaultDefStartDt1, BSSI_EBTemplateID, QUANTITY, BSSI_EBOnQty, BSSI_EBRecog_Methods, BSSI_Recog_Acct_Index1, BSSI_Recognition_Amount, DUMYRCRD, DEX_ROW_ID FROM .B7133303 WHERE ( SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ > @CMPNTSEQ OR SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND LNITMSEQ > @LNITMSEQ OR SOPNUMBE = @SOPNUMBE AND SOPTYPE > @SOPTYPE OR SOPNUMBE > @SOPNUMBE ) ORDER BY SOPNUMBE ASC, SOPTYPE ASC, LNITMSEQ ASC, CMPNTSEQ ASC END ELSE IF @SOPNUMBE_RS = @SOPNUMBE_RE BEGIN SELECT TOP 25  SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, BSSI_DeferralStartDate, BSSI_DeferralEndDate, BSSI_Recog_TemplateID, BSSI_Contract_Number, BSSI_RBLineSeqNumber, DOCDATE, BSSI_Deferrable, BSSI_Recog_Acct_Index, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, BSSI_CreateOneSchedule, BSSI_RBLineTotalAmount, BSSI_BundleID, BSSI_DefaultExtPrice, BSSI_DefaultExtPriceOrig, XTNDPRCE, OXTNDPRC, BSSI_VSOEExtPrice, BSSI_VSOEExtPriceOrig, BSSI_AREDContract_Number, BSSI_DefaultDefStartDt1, BSSI_EBTemplateID, QUANTITY, BSSI_EBOnQty, BSSI_EBRecog_Methods, BSSI_Recog_Acct_Index1, BSSI_Recognition_Amount, DUMYRCRD, DEX_ROW_ID FROM .B7133303 WHERE SOPNUMBE = @SOPNUMBE_RS AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND ( SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ > @CMPNTSEQ OR SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND LNITMSEQ > @LNITMSEQ OR SOPNUMBE = @SOPNUMBE AND SOPTYPE > @SOPTYPE OR SOPNUMBE > @SOPNUMBE ) ORDER BY SOPNUMBE ASC, SOPTYPE ASC, LNITMSEQ ASC, CMPNTSEQ ASC END ELSE BEGIN SELECT TOP 25  SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, BSSI_DeferralStartDate, BSSI_DeferralEndDate, BSSI_Recog_TemplateID, BSSI_Contract_Number, BSSI_RBLineSeqNumber, DOCDATE, BSSI_Deferrable, BSSI_Recog_Acct_Index, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, BSSI_CreateOneSchedule, BSSI_RBLineTotalAmount, BSSI_BundleID, BSSI_DefaultExtPrice, BSSI_DefaultExtPriceOrig, XTNDPRCE, OXTNDPRC, BSSI_VSOEExtPrice, BSSI_VSOEExtPriceOrig, BSSI_AREDContract_Number, BSSI_DefaultDefStartDt1, BSSI_EBTemplateID, QUANTITY, BSSI_EBOnQty, BSSI_EBRecog_Methods, BSSI_Recog_Acct_Index1, BSSI_Recognition_Amount, DUMYRCRD, DEX_ROW_ID FROM .B7133303 WHERE SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND ( SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ > @CMPNTSEQ OR SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND LNITMSEQ > @LNITMSEQ OR SOPNUMBE = @SOPNUMBE AND SOPTYPE > @SOPTYPE OR SOPNUMBE > @SOPNUMBE ) ORDER BY SOPNUMBE ASC, SOPTYPE ASC, LNITMSEQ ASC, CMPNTSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7133303N_1] TO [DYNGRP]
GO
