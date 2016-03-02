SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640001SS_2] (@BSSI_Tenant_Lease_Number char(25), @BSSI_Charge_ID char(25), @LOCNCODE char(11), @LNITMSEQ int, @BSSI_LocationCode char(11)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, BSSI_Charge_ID, BSSI_LocationCode, LNITMSEQ, LNSEQNBR, LOCNCODE, BSSI_Total_Leasable_Sq_F, LOCNDSCR, DEX_ROW_ID FROM .B4640001 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Charge_ID = @BSSI_Charge_ID AND LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ AND BSSI_LocationCode = @BSSI_LocationCode ORDER BY BSSI_Tenant_Lease_Number ASC, BSSI_Charge_ID ASC, LOCNCODE ASC, LNITMSEQ ASC, BSSI_LocationCode ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640001SS_2] TO [DYNGRP]
GO
