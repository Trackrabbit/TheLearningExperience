SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640024SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @YEAR1 smallint, @ACTINDX int, @BSSI_ApplyAdminFee tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640024 (BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, YEAR1, ACTINDX, BSSI_ApplyAdminFee) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_Charge_ID, @YEAR1, @ACTINDX, @BSSI_ApplyAdminFee) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640024SI] TO [DYNGRP]
GO
