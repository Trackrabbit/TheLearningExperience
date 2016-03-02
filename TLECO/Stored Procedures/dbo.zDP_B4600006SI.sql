SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600006SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @PERIODID smallint, @LNSEQNBR numeric(19,5), @BSSI_Sales_Amount numeric(19,5), @BSSI_dGraduateBPPerct numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4600006 (BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, PERIODID, LNSEQNBR, BSSI_Sales_Amount, BSSI_dGraduateBPPerct) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_Charge_ID, @PERIODID, @LNSEQNBR, @BSSI_Sales_Amount, @BSSI_dGraduateBPPerct) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600006SI] TO [DYNGRP]
GO
