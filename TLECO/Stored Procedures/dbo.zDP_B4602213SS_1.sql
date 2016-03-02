SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602213SS_1] (@BSSI_Tenant_Lease_Number char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, BSSI_App_Rec_Date, BSSI_App_Fee_Req, BSSI_App_Amount, BSSI_App_Fee_Bill_Date, BSSI_App_Pre_det_Date, BSSI_Com_Exp_Com_Date, BSSI_Com_Exp_Req, BSSI_SSIS_Cos_Pas_Thr, BSSI_SSIS_Cost, BSSI_SSIS_Cus_PO_Num, BSSI_SSIS_Ord_Date, BSSI_SSIS_PO_Num, BSSI_SSIS_Rec_Date, BSSI_SSIS_Req, BSSI_Site_Ske_Rec_Date, BSSI_Tow_Dra_File, BSSI_Fou_Des_File, BSSI_Geo_File, BSSI_Str_Cos_Pas_Thr, BSSI_Str_Cost, BSSI_Str_Cus_PO_Num_Req_, BSSI_Str_Cus_PO_Rec_Date, BSSI_Str_Eng, BSSI_Str_Mod_Req, BSSI_Str_Ord_Date, BSSI_Str_Rec_Date, BSSI_Str_Req, BSSI_Str_Res, BSSI_Col_Pac_Mai_Date, NOTEINDX, DEX_ROW_ID, BSSI_Fea_Note FROM .B4602213 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number ORDER BY BSSI_Tenant_Lease_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602213SS_1] TO [DYNGRP]
GO
