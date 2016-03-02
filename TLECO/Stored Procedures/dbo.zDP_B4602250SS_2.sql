SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602250SS_2] (@BSSI_Rev_Sharing_Type smallint, @BSSI_Tenant_Lease_Number char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, BSSI_Rev_Sharing_Type, NOTEINDX, DEX_ROW_ID FROM .B4602250 WHERE BSSI_Rev_Sharing_Type = @BSSI_Rev_Sharing_Type AND BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number ORDER BY BSSI_Rev_Sharing_Type ASC, BSSI_Tenant_Lease_Number ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602250SS_2] TO [DYNGRP]
GO
