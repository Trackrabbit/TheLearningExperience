SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100800SS_1] (@ITEMNMBR char(31)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  ITEMNMBR, BSSI_Deferrable, BSSI_Offering_Type_ID, BSSI_Default_Order_TypeS, BSSI_Default_Revenue_Sou, BSSI_Recog_TemplateID, BSSI_Default_Order_TypeP, BSSI_Default_Expense_Sou, BSSI_EBTemplateID, BSSI_DefaultDefStartDt1, DEX_ROW_ID FROM .B7100800 WHERE ITEMNMBR = @ITEMNMBR ORDER BY ITEMNMBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100800SS_1] TO [DYNGRP]
GO
