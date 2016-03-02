SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466008SS_1] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @BSSI_MeterNumber char(31)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, BSSI_MeterNumber, DSCRIPTN, BSSI_Include, DEX_ROW_ID FROM .BS466008 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_MeterNumber = @BSSI_MeterNumber ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, BSSI_MeterNumber ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466008SS_1] TO [DYNGRP]
GO
