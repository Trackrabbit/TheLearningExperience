SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640029SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @LNSEQNBR numeric(19,5), @LNITMSEQ int, @DATE1 datetime, @SOPNUMBE char(21), @BSSI_BilledAmount numeric(19,5), @BSSI_PercentRent tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640029 (BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNSEQNBR, LNITMSEQ, DATE1, SOPNUMBE, BSSI_BilledAmount, BSSI_PercentRent) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_Charge_ID, @LNSEQNBR, @LNITMSEQ, @DATE1, @SOPNUMBE, @BSSI_BilledAmount, @BSSI_PercentRent) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640029SI] TO [DYNGRP]
GO
