SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510100SS_3] (@MJW_Tax_ID char(21), @VENDNAME char(65)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  VENDORID, MJW_Vendor_Type, MJW_Owner_Type_Code, MJW_Legal_Residence_Stat, MJW_Distribution_Check_R, MJW_Investor_Type, MJW_Tax_ID, MJW_Tax_Type, VENDNAME, MJW_Salutation, MJW_K1_Name, MJW_K1_Name1, LASTNAME, FRSTNAME, BRTHDATE, SLPRSNID, IMS_Certificate_Name, MJW_Investor_Accredited, BSSI_Reinvest_CB, BSSI_Investor_Type, DEX_ROW_ID, MJW_Registration FROM .B0510100 WHERE MJW_Tax_ID = @MJW_Tax_ID AND VENDNAME = @VENDNAME ORDER BY MJW_Tax_ID ASC, VENDNAME ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510100SS_3] TO [DYNGRP]
GO
