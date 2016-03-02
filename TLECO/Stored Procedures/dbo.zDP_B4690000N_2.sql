SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4690000N_2] (@BS int, @BSSI_Tenant_Lease_Number char(25), @BSSI_Tenant_Lease_Number_RS char(25), @BSSI_Tenant_Lease_Number_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Description, BSSI_Tenant_Lease_Number, DEX_ROW_ID FROM .B4690000 WHERE ( BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Description, BSSI_Tenant_Lease_Number, DEX_ROW_ID FROM .B4690000 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND ( BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC END ELSE BEGIN SELECT TOP 25  BSSI_Description, BSSI_Tenant_Lease_Number, DEX_ROW_ID FROM .B4690000 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND ( BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4690000N_2] TO [DYNGRP]
GO
