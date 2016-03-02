SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602216SS_1] (@BSSI_Tenant_Lease_Number char(25), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LNITMSEQ, CUSTNMBR, DOCAMNT, PRCNTAGE, NOTEINDX, DEX_ROW_ID FROM .B4602216 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LNITMSEQ = @LNITMSEQ ORDER BY BSSI_Tenant_Lease_Number ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602216SS_1] TO [DYNGRP]
GO
