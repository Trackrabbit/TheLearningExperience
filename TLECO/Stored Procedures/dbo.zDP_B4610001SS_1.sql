SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610001SS_1] (@BSSI_Tenant_Lease_Number char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, NOTEINDX, DEX_ROW_ID FROM .B4610001 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number ORDER BY BSSI_Tenant_Lease_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610001SS_1] TO [DYNGRP]
GO
