SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610001SI] (@BSSI_Tenant_Lease_Number char(25), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4610001 (BSSI_Tenant_Lease_Number, NOTEINDX) VALUES ( @BSSI_Tenant_Lease_Number, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610001SI] TO [DYNGRP]
GO