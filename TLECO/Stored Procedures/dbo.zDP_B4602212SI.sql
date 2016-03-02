SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602212SI] (@BSSI_Tenant_Lease_Number char(25), @BSSI_Keys_Lock tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602212 (BSSI_Tenant_Lease_Number, BSSI_Keys_Lock) VALUES ( @BSSI_Tenant_Lease_Number, @BSSI_Keys_Lock) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602212SI] TO [DYNGRP]
GO
