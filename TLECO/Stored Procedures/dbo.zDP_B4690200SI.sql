SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4690200SI] (@LNSEQNBR numeric(19,5), @BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Ground_Lease_Number char(25), @BSSI_Charge_ID char(25), @BSSI_Term char(25), @BSSI_Billing_Frequency smallint, @STRTTIME datetime, @ENDTIME datetime, @QUANTITY numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4690200 (LNSEQNBR, BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Ground_Lease_Number, BSSI_Charge_ID, BSSI_Term, BSSI_Billing_Frequency, STRTTIME, ENDTIME, QUANTITY) VALUES ( @LNSEQNBR, @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_Ground_Lease_Number, @BSSI_Charge_ID, @BSSI_Term, @BSSI_Billing_Frequency, @STRTTIME, @ENDTIME, @QUANTITY) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4690200SI] TO [DYNGRP]
GO
