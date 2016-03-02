SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600105F_2] (@BSSI_Tenant_Lease_Prefix_RS char(5), @BSSI_Tenant_Lease_Prefix_RE char(5)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Prefix_RS IS NULL BEGIN SELECT TOP 25  BSSI_TenantTypeID, BSSI_Tenant_Lease_Prefix, BSSI_Tenant_Lease_NextNu, DEX_ROW_ID FROM .B4600105 ORDER BY BSSI_Tenant_Lease_Prefix ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Tenant_Lease_Prefix_RS = @BSSI_Tenant_Lease_Prefix_RE BEGIN SELECT TOP 25  BSSI_TenantTypeID, BSSI_Tenant_Lease_Prefix, BSSI_Tenant_Lease_NextNu, DEX_ROW_ID FROM .B4600105 WHERE BSSI_Tenant_Lease_Prefix = @BSSI_Tenant_Lease_Prefix_RS ORDER BY BSSI_Tenant_Lease_Prefix ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_TenantTypeID, BSSI_Tenant_Lease_Prefix, BSSI_Tenant_Lease_NextNu, DEX_ROW_ID FROM .B4600105 WHERE BSSI_Tenant_Lease_Prefix BETWEEN @BSSI_Tenant_Lease_Prefix_RS AND @BSSI_Tenant_Lease_Prefix_RE ORDER BY BSSI_Tenant_Lease_Prefix ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600105F_2] TO [DYNGRP]
GO
