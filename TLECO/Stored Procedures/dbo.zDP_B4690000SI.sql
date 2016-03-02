SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4690000SI] (@BSSI_Description char(51), @BSSI_Tenant_Lease_Number char(25), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4690000 (BSSI_Description, BSSI_Tenant_Lease_Number) VALUES ( @BSSI_Description, @BSSI_Tenant_Lease_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4690000SI] TO [DYNGRP]
GO
