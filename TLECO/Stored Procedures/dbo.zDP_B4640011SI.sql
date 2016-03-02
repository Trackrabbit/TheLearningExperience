SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640011SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @LNSEQNBR numeric(19,5), @BSSI_CalculationMethod smallint, @STRTDATE datetime, @BSSI_BPBillFrequency smallint, @BSSI_RecoverableChargeID char(25), @ADRSCODE char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640011 (BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNSEQNBR, BSSI_CalculationMethod, STRTDATE, BSSI_BPBillFrequency, BSSI_RecoverableChargeID, ADRSCODE) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_Charge_ID, @LNSEQNBR, @BSSI_CalculationMethod, @STRTDATE, @BSSI_BPBillFrequency, @BSSI_RecoverableChargeID, @ADRSCODE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640011SI] TO [DYNGRP]
GO
