SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4690000SS_2] (@BSSI_Tenant_Lease_Number char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Description, BSSI_Tenant_Lease_Number, DEX_ROW_ID FROM .B4690000 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number ORDER BY BSSI_Tenant_Lease_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4690000SS_2] TO [DYNGRP]
GO
