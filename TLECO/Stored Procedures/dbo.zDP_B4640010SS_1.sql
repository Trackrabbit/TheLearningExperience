SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640010SS_1] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, BSSI_Dummy, DEX_ROW_ID FROM .B4640010 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640010SS_1] TO [DYNGRP]
GO
