SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640001SI] (@BSSI_Tenant_Lease_Number char(25), @BSSI_Charge_ID char(25), @BSSI_LocationCode char(11), @LNITMSEQ int, @LNSEQNBR numeric(19,5), @LOCNCODE char(11), @BSSI_Total_Leasable_Sq_F numeric(19,5), @LOCNDSCR char(31), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640001 (BSSI_Tenant_Lease_Number, BSSI_Charge_ID, BSSI_LocationCode, LNITMSEQ, LNSEQNBR, LOCNCODE, BSSI_Total_Leasable_Sq_F, LOCNDSCR) VALUES ( @BSSI_Tenant_Lease_Number, @BSSI_Charge_ID, @BSSI_LocationCode, @LNITMSEQ, @LNSEQNBR, @LOCNCODE, @BSSI_Total_Leasable_Sq_F, @LOCNDSCR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640001SI] TO [DYNGRP]
GO
