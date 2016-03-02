SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640041SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @LNSEQNBR numeric(19,5), @BSSI_AnnualBreakPointAmt numeric(19,5), @BSSI_BreakPointPercent numeric(19,5), @BSSI_ProrationOption smallint, @BSSI_SeperatePeriod tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640041 (BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNSEQNBR, BSSI_AnnualBreakPointAmt, BSSI_BreakPointPercent, BSSI_ProrationOption, BSSI_SeperatePeriod) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_Charge_ID, @LNSEQNBR, @BSSI_AnnualBreakPointAmt, @BSSI_BreakPointPercent, @BSSI_ProrationOption, @BSSI_SeperatePeriod) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640041SI] TO [DYNGRP]
GO
