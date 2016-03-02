SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100820SI] (@CUSTNMBR char(15), @BSSI_Deferrable tinyint, @BSSI_Contract_Number char(25), @BSSI_Offering_Type_ID char(25), @BSSI_Default_Order_TypeS char(25), @BSSI_Default_Revenue_Sou char(25), @BSSI_Recog_TemplateID char(25), @BSSI_EBTemplateID char(25), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7100820 (CUSTNMBR, BSSI_Deferrable, BSSI_Contract_Number, BSSI_Offering_Type_ID, BSSI_Default_Order_TypeS, BSSI_Default_Revenue_Sou, BSSI_Recog_TemplateID, BSSI_EBTemplateID) VALUES ( @CUSTNMBR, @BSSI_Deferrable, @BSSI_Contract_Number, @BSSI_Offering_Type_ID, @BSSI_Default_Order_TypeS, @BSSI_Default_Revenue_Sou, @BSSI_Recog_TemplateID, @BSSI_EBTemplateID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100820SI] TO [DYNGRP]
GO
