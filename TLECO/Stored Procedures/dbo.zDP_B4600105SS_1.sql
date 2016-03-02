SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600105SS_1] (@BSSI_TenantTypeID char(25), @BSSI_Tenant_Lease_Prefix char(5)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_TenantTypeID, BSSI_Tenant_Lease_Prefix, BSSI_Tenant_Lease_NextNu, DEX_ROW_ID FROM .B4600105 WHERE BSSI_TenantTypeID = @BSSI_TenantTypeID AND BSSI_Tenant_Lease_Prefix = @BSSI_Tenant_Lease_Prefix ORDER BY BSSI_TenantTypeID ASC, BSSI_Tenant_Lease_Prefix ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600105SS_1] TO [DYNGRP]
GO
