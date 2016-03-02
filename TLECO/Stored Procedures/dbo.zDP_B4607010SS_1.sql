SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4607010SS_1] (@LOCNCODE char(11), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  LOCNCODE, LNITMSEQ, BSSI_Assessors_Parcel_Nu, BSSI_Property_Tax_Payee, BSSI_Property_Tax_Assess, BSSI_Property_Tax_Due_Da, BSSI_Account_Number, BSSI_Bill_Number, BSSI_Owner_Number, BSSI_Full_Value, BSSI_Taxable_Value, BSSI_Property_Number, BSSI_Tax_Amount, BSSI_Dummy_Field, BSSI_County_Multi, BSSI_Pay_Landlord_Taxes, BSSI_Tax_Due_On_Property, BSSI_Owned_Land, BSSI_Shelter_On_Site, BSSI_First_Year_Tax_Amt, BSSI_Second_Year_Tax_Amt, NOTEINDX, DEX_ROW_ID FROM .B4607010 WHERE LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ ORDER BY LOCNCODE ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4607010SS_1] TO [DYNGRP]
GO
