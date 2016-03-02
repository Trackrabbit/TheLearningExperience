SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100110SS_1] (@SETUPKEY smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SETUPKEY, BSSI_Offering_Type_ID, BSSI_Recog_TemplateID, BSSI_OffType_For_SalesFr, BSSI_Template_ID_SalesFr, BSSI_Default_Revenue_Sou, BSSI_Default_Order_TypeS, BSSI_RevRecognitionAcctF, BSSI_DeferralStartDateOt, BSSI_EBTemplateID, BSSI_EnableExpiryDate, BSSI_ExpiryPeriod, BSSI_Recog_Acct_Index1, BSSI_EnableATExpiryDate, BSSI_ATExpiryPeriod, BSSI_AttachReturnsToSche, BSSI_UpdateScheduleOnRet, DEX_ROW_ID FROM .B7100110 WHERE SETUPKEY = @SETUPKEY ORDER BY SETUPKEY ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100110SS_1] TO [DYNGRP]
GO
