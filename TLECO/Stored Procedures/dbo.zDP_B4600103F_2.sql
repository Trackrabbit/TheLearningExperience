SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600103F_2] (@BSSI_TenantLeaseTypeID_RS char(31), @BSSI_Tenant_Lease_Prefix_RS char(5), @BSSI_TenantLeaseTypeID_RE char(31), @BSSI_Tenant_Lease_Prefix_RE char(5)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_TenantLeaseTypeID_RS IS NULL BEGIN SELECT TOP 25  BSSI_TenantLeaseTypeID, BSSI_Tenant_Lease_Prefix, BSSI_Tenant_Lease_NextNu, DEX_ROW_ID FROM .B4600103 ORDER BY BSSI_TenantLeaseTypeID ASC, BSSI_Tenant_Lease_Prefix ASC END ELSE IF @BSSI_TenantLeaseTypeID_RS = @BSSI_TenantLeaseTypeID_RE BEGIN SELECT TOP 25  BSSI_TenantLeaseTypeID, BSSI_Tenant_Lease_Prefix, BSSI_Tenant_Lease_NextNu, DEX_ROW_ID FROM .B4600103 WHERE BSSI_TenantLeaseTypeID = @BSSI_TenantLeaseTypeID_RS AND BSSI_Tenant_Lease_Prefix BETWEEN @BSSI_Tenant_Lease_Prefix_RS AND @BSSI_Tenant_Lease_Prefix_RE ORDER BY BSSI_TenantLeaseTypeID ASC, BSSI_Tenant_Lease_Prefix ASC END ELSE BEGIN SELECT TOP 25  BSSI_TenantLeaseTypeID, BSSI_Tenant_Lease_Prefix, BSSI_Tenant_Lease_NextNu, DEX_ROW_ID FROM .B4600103 WHERE BSSI_TenantLeaseTypeID BETWEEN @BSSI_TenantLeaseTypeID_RS AND @BSSI_TenantLeaseTypeID_RE AND BSSI_Tenant_Lease_Prefix BETWEEN @BSSI_Tenant_Lease_Prefix_RS AND @BSSI_Tenant_Lease_Prefix_RE ORDER BY BSSI_TenantLeaseTypeID ASC, BSSI_Tenant_Lease_Prefix ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600103F_2] TO [DYNGRP]
GO
