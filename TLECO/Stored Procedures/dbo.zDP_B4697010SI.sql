SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4697010SI] (@BSSI_PortfolioID char(25), @BSSI_Assessors_Parcel_Nu char(25), @BSSI_Property_Tax_Assess datetime, @BSSI_Property_Tax_Payee char(25), @BSSI_Property_Tax_Due_Da datetime, @BSSI_Property_Number char(25), @BSSI_Account_Number char(25), @BSSI_Bill_Number char(25), @BSSI_Owner_Number char(25), @BSSI_Full_Value numeric(19,5), @BSSI_Taxable_Value numeric(19,5), @BSSI_Tax_Amount numeric(19,5), @LNITMSEQ int, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4697010 (BSSI_PortfolioID, BSSI_Assessors_Parcel_Nu, BSSI_Property_Tax_Assess, BSSI_Property_Tax_Payee, BSSI_Property_Tax_Due_Da, BSSI_Property_Number, BSSI_Account_Number, BSSI_Bill_Number, BSSI_Owner_Number, BSSI_Full_Value, BSSI_Taxable_Value, BSSI_Tax_Amount, LNITMSEQ) VALUES ( @BSSI_PortfolioID, @BSSI_Assessors_Parcel_Nu, @BSSI_Property_Tax_Assess, @BSSI_Property_Tax_Payee, @BSSI_Property_Tax_Due_Da, @BSSI_Property_Number, @BSSI_Account_Number, @BSSI_Bill_Number, @BSSI_Owner_Number, @BSSI_Full_Value, @BSSI_Taxable_Value, @BSSI_Tax_Amount, @LNITMSEQ) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4697010SI] TO [DYNGRP]
GO
