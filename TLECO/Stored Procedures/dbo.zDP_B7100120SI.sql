SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100120SI] (@SETUPKEY smallint, @BSSI_Offering_Type_ID char(25), @BSSI_Recog_TemplateID char(25), @BSSI_OffType_For_PurchFr smallint, @BSSI_Template_ID_FPufFr smallint, @BSSI_Default_Expense_Sou char(25), @BSSI_Default_Order_TypeP char(25), @BSSI_ExpRecAcctFrom smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7100120 (SETUPKEY, BSSI_Offering_Type_ID, BSSI_Recog_TemplateID, BSSI_OffType_For_PurchFr, BSSI_Template_ID_FPufFr, BSSI_Default_Expense_Sou, BSSI_Default_Order_TypeP, BSSI_ExpRecAcctFrom) VALUES ( @SETUPKEY, @BSSI_Offering_Type_ID, @BSSI_Recog_TemplateID, @BSSI_OffType_For_PurchFr, @BSSI_Template_ID_FPufFr, @BSSI_Default_Expense_Sou, @BSSI_Default_Order_TypeP, @BSSI_ExpRecAcctFrom) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100120SI] TO [DYNGRP]
GO
