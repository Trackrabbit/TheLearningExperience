SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100120L_1] (@SETUPKEY_RS smallint, @SETUPKEY_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @SETUPKEY_RS IS NULL BEGIN SELECT TOP 25  SETUPKEY, BSSI_Offering_Type_ID, BSSI_Recog_TemplateID, BSSI_OffType_For_PurchFr, BSSI_Template_ID_FPufFr, BSSI_Default_Expense_Sou, BSSI_Default_Order_TypeP, BSSI_ExpRecAcctFrom, DEX_ROW_ID FROM .B7100120 ORDER BY SETUPKEY DESC END ELSE IF @SETUPKEY_RS = @SETUPKEY_RE BEGIN SELECT TOP 25  SETUPKEY, BSSI_Offering_Type_ID, BSSI_Recog_TemplateID, BSSI_OffType_For_PurchFr, BSSI_Template_ID_FPufFr, BSSI_Default_Expense_Sou, BSSI_Default_Order_TypeP, BSSI_ExpRecAcctFrom, DEX_ROW_ID FROM .B7100120 WHERE SETUPKEY = @SETUPKEY_RS ORDER BY SETUPKEY DESC END ELSE BEGIN SELECT TOP 25  SETUPKEY, BSSI_Offering_Type_ID, BSSI_Recog_TemplateID, BSSI_OffType_For_PurchFr, BSSI_Template_ID_FPufFr, BSSI_Default_Expense_Sou, BSSI_Default_Order_TypeP, BSSI_ExpRecAcctFrom, DEX_ROW_ID FROM .B7100120 WHERE SETUPKEY BETWEEN @SETUPKEY_RS AND @SETUPKEY_RE ORDER BY SETUPKEY DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100120L_1] TO [DYNGRP]
GO
