SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600105L_1] (@BSSI_TenantTypeID_RS char(25), @BSSI_Tenant_Lease_Prefix_RS char(5), @BSSI_TenantTypeID_RE char(25), @BSSI_Tenant_Lease_Prefix_RE char(5)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_TenantTypeID_RS IS NULL BEGIN SELECT TOP 25  BSSI_TenantTypeID, BSSI_Tenant_Lease_Prefix, BSSI_Tenant_Lease_NextNu, DEX_ROW_ID FROM .B4600105 ORDER BY BSSI_TenantTypeID DESC, BSSI_Tenant_Lease_Prefix DESC END ELSE IF @BSSI_TenantTypeID_RS = @BSSI_TenantTypeID_RE BEGIN SELECT TOP 25  BSSI_TenantTypeID, BSSI_Tenant_Lease_Prefix, BSSI_Tenant_Lease_NextNu, DEX_ROW_ID FROM .B4600105 WHERE BSSI_TenantTypeID = @BSSI_TenantTypeID_RS AND BSSI_Tenant_Lease_Prefix BETWEEN @BSSI_Tenant_Lease_Prefix_RS AND @BSSI_Tenant_Lease_Prefix_RE ORDER BY BSSI_TenantTypeID DESC, BSSI_Tenant_Lease_Prefix DESC END ELSE BEGIN SELECT TOP 25  BSSI_TenantTypeID, BSSI_Tenant_Lease_Prefix, BSSI_Tenant_Lease_NextNu, DEX_ROW_ID FROM .B4600105 WHERE BSSI_TenantTypeID BETWEEN @BSSI_TenantTypeID_RS AND @BSSI_TenantTypeID_RE AND BSSI_Tenant_Lease_Prefix BETWEEN @BSSI_Tenant_Lease_Prefix_RS AND @BSSI_Tenant_Lease_Prefix_RE ORDER BY BSSI_TenantTypeID DESC, BSSI_Tenant_Lease_Prefix DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600105L_1] TO [DYNGRP]
GO
