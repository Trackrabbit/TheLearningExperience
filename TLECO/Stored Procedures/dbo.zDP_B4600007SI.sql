SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600007SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @PERIODID smallint, @BSSI_SeperatePeriod tinyint, @BSSI_ProrationOption smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4600007 (BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, PERIODID, BSSI_SeperatePeriod, BSSI_ProrationOption) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_Charge_ID, @PERIODID, @BSSI_SeperatePeriod, @BSSI_ProrationOption) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600007SI] TO [DYNGRP]
GO
