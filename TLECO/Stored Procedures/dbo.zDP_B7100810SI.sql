SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100810SI] (@ITMCLSCD char(11), @BSSI_Deferrable tinyint, @BSSI_Offering_Type_ID char(25), @BSSI_Default_Order_TypeS char(25), @BSSI_Default_Revenue_Sou char(25), @BSSI_Recog_TemplateID char(25), @BSSI_Default_Order_TypeP char(25), @BSSI_Default_Expense_Sou char(25), @BSSI_EBTemplateID char(25), @BSSI_DefaultDefStartDt1 smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7100810 (ITMCLSCD, BSSI_Deferrable, BSSI_Offering_Type_ID, BSSI_Default_Order_TypeS, BSSI_Default_Revenue_Sou, BSSI_Recog_TemplateID, BSSI_Default_Order_TypeP, BSSI_Default_Expense_Sou, BSSI_EBTemplateID, BSSI_DefaultDefStartDt1) VALUES ( @ITMCLSCD, @BSSI_Deferrable, @BSSI_Offering_Type_ID, @BSSI_Default_Order_TypeS, @BSSI_Default_Revenue_Sou, @BSSI_Recog_TemplateID, @BSSI_Default_Order_TypeP, @BSSI_Default_Expense_Sou, @BSSI_EBTemplateID, @BSSI_DefaultDefStartDt1) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100810SI] TO [DYNGRP]
GO
