SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4697010SS_1] (@BSSI_PortfolioID char(25), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_PortfolioID, BSSI_Assessors_Parcel_Nu, BSSI_Property_Tax_Assess, BSSI_Property_Tax_Payee, BSSI_Property_Tax_Due_Da, BSSI_Property_Number, BSSI_Account_Number, BSSI_Bill_Number, BSSI_Owner_Number, BSSI_Full_Value, BSSI_Taxable_Value, BSSI_Tax_Amount, LNITMSEQ, DEX_ROW_ID FROM .B4697010 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND LNITMSEQ = @LNITMSEQ ORDER BY BSSI_PortfolioID ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4697010SS_1] TO [DYNGRP]
GO
