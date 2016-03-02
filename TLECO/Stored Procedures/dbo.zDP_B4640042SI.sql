SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640042SI] (@BSSI_Tenant_Lease_Number char(25), @BSSI_Charge_ID char(25), @LOCNCODE char(11), @LNSEQNBR numeric(19,5), @LNITMSEQ int, @STRTDATE datetime, @ENDDATE datetime, @BSSI_Consumption numeric(19,5), @BSSI_MeterNumber char(31), @BSSI_Rate numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640042 (BSSI_Tenant_Lease_Number, BSSI_Charge_ID, LOCNCODE, LNSEQNBR, LNITMSEQ, STRTDATE, ENDDATE, BSSI_Consumption, BSSI_MeterNumber, BSSI_Rate) VALUES ( @BSSI_Tenant_Lease_Number, @BSSI_Charge_ID, @LOCNCODE, @LNSEQNBR, @LNITMSEQ, @STRTDATE, @ENDDATE, @BSSI_Consumption, @BSSI_MeterNumber, @BSSI_Rate) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640042SI] TO [DYNGRP]
GO
