SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466008SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @BSSI_MeterNumber char(31), @DSCRIPTN char(31), @BSSI_Include tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .BS466008 (BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, BSSI_MeterNumber, DSCRIPTN, BSSI_Include) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_Charge_ID, @BSSI_MeterNumber, @DSCRIPTN, @BSSI_Include) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466008SI] TO [DYNGRP]
GO
