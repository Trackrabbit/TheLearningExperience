SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100820L_1] (@CUSTNMBR_RS char(15), @CUSTNMBR_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, BSSI_Deferrable, BSSI_Contract_Number, BSSI_Offering_Type_ID, BSSI_Default_Order_TypeS, BSSI_Default_Revenue_Sou, BSSI_Recog_TemplateID, BSSI_EBTemplateID, DEX_ROW_ID FROM .B7100820 ORDER BY CUSTNMBR DESC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  CUSTNMBR, BSSI_Deferrable, BSSI_Contract_Number, BSSI_Offering_Type_ID, BSSI_Default_Order_TypeS, BSSI_Default_Revenue_Sou, BSSI_Recog_TemplateID, BSSI_EBTemplateID, DEX_ROW_ID FROM .B7100820 WHERE CUSTNMBR = @CUSTNMBR_RS ORDER BY CUSTNMBR DESC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, BSSI_Deferrable, BSSI_Contract_Number, BSSI_Offering_Type_ID, BSSI_Default_Order_TypeS, BSSI_Default_Revenue_Sou, BSSI_Recog_TemplateID, BSSI_EBTemplateID, DEX_ROW_ID FROM .B7100820 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY CUSTNMBR DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100820L_1] TO [DYNGRP]
GO