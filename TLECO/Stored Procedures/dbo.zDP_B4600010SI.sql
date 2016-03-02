SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600010SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @LNSEQNBR numeric(19,5), @STRTDATE datetime, @BSSI_Template_ID char(25), @BSSI_RecoverableChargeID char(25), @BSSI_BillingAddress char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4600010 (BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNSEQNBR, STRTDATE, BSSI_Template_ID, BSSI_RecoverableChargeID, BSSI_BillingAddress) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_Charge_ID, @LNSEQNBR, @STRTDATE, @BSSI_Template_ID, @BSSI_RecoverableChargeID, @BSSI_BillingAddress) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600010SI] TO [DYNGRP]
GO
