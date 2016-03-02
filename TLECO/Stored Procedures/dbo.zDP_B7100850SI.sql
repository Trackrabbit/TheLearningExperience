SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100850SI] (@VNDCLSID char(11), @BSSI_Deferrable tinyint, @BSSI_Contract_Number char(25), @BSSI_Offering_Type_ID char(25), @BSSI_Default_Order_TypeP char(25), @BSSI_Default_Expense_Sou char(25), @BSSI_Recog_TemplateID char(25), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7100850 (VNDCLSID, BSSI_Deferrable, BSSI_Contract_Number, BSSI_Offering_Type_ID, BSSI_Default_Order_TypeP, BSSI_Default_Expense_Sou, BSSI_Recog_TemplateID) VALUES ( @VNDCLSID, @BSSI_Deferrable, @BSSI_Contract_Number, @BSSI_Offering_Type_ID, @BSSI_Default_Order_TypeP, @BSSI_Default_Expense_Sou, @BSSI_Recog_TemplateID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100850SI] TO [DYNGRP]
GO
