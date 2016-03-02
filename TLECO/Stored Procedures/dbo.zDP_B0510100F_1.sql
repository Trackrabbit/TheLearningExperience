SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510100F_1] (@VENDORID_RS char(15), @VENDORID_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  VENDORID, MJW_Vendor_Type, MJW_Owner_Type_Code, MJW_Legal_Residence_Stat, MJW_Distribution_Check_R, MJW_Investor_Type, MJW_Tax_ID, MJW_Tax_Type, VENDNAME, MJW_Salutation, MJW_K1_Name, MJW_K1_Name1, LASTNAME, FRSTNAME, BRTHDATE, SLPRSNID, IMS_Certificate_Name, MJW_Investor_Accredited, BSSI_Reinvest_CB, BSSI_Investor_Type, DEX_ROW_ID, MJW_Registration FROM .B0510100 ORDER BY VENDORID ASC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  VENDORID, MJW_Vendor_Type, MJW_Owner_Type_Code, MJW_Legal_Residence_Stat, MJW_Distribution_Check_R, MJW_Investor_Type, MJW_Tax_ID, MJW_Tax_Type, VENDNAME, MJW_Salutation, MJW_K1_Name, MJW_K1_Name1, LASTNAME, FRSTNAME, BRTHDATE, SLPRSNID, IMS_Certificate_Name, MJW_Investor_Accredited, BSSI_Reinvest_CB, BSSI_Investor_Type, DEX_ROW_ID, MJW_Registration FROM .B0510100 WHERE VENDORID = @VENDORID_RS ORDER BY VENDORID ASC END ELSE BEGIN SELECT TOP 25  VENDORID, MJW_Vendor_Type, MJW_Owner_Type_Code, MJW_Legal_Residence_Stat, MJW_Distribution_Check_R, MJW_Investor_Type, MJW_Tax_ID, MJW_Tax_Type, VENDNAME, MJW_Salutation, MJW_K1_Name, MJW_K1_Name1, LASTNAME, FRSTNAME, BRTHDATE, SLPRSNID, IMS_Certificate_Name, MJW_Investor_Accredited, BSSI_Reinvest_CB, BSSI_Investor_Type, DEX_ROW_ID, MJW_Registration FROM .B0510100 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE ORDER BY VENDORID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510100F_1] TO [DYNGRP]
GO
