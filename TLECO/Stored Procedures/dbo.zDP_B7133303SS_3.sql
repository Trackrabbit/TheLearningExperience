SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7133303SS_3] (@SOPTYPE smallint, @SOPNUMBE char(21), @BSSI_BundleID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, BSSI_DeferralStartDate, BSSI_DeferralEndDate, BSSI_Recog_TemplateID, BSSI_Contract_Number, BSSI_RBLineSeqNumber, DOCDATE, BSSI_Deferrable, BSSI_Recog_Acct_Index, BSSI_ScheduleBasedOnDate, BSSI_Recog_Frequency, BSSI_CreateOneSchedule, BSSI_RBLineTotalAmount, BSSI_BundleID, BSSI_DefaultExtPrice, BSSI_DefaultExtPriceOrig, XTNDPRCE, OXTNDPRC, BSSI_VSOEExtPrice, BSSI_VSOEExtPriceOrig, BSSI_AREDContract_Number, BSSI_DefaultDefStartDt1, BSSI_EBTemplateID, QUANTITY, BSSI_EBOnQty, BSSI_EBRecog_Methods, BSSI_Recog_Acct_Index1, BSSI_Recognition_Amount, DUMYRCRD, DEX_ROW_ID FROM .B7133303 WHERE SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND BSSI_BundleID = @BSSI_BundleID ORDER BY SOPTYPE ASC, SOPNUMBE ASC, BSSI_BundleID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7133303SS_3] TO [DYNGRP]
GO
