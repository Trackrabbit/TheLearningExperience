SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602246SS_2] (@BSSI_Tenant_Lease_Number char(25), @CUSTNMBR char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LNITMSEQ, CUSTNMBR, ADRSCODE, BSSI_Total_Leasable_Sq_F, BSSI_Total_Leasable_Sq_M, NOTEINDX, DEX_ROW_ID FROM .B4602246 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND CUSTNMBR = @CUSTNMBR ORDER BY BSSI_Tenant_Lease_Number ASC, CUSTNMBR ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602246SS_2] TO [DYNGRP]
GO