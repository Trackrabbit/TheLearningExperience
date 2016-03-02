SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602246L_1] (@BSSI_Tenant_Lease_Number_RS char(25), @LNITMSEQ_RS int, @BSSI_Tenant_Lease_Number_RE char(25), @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LNITMSEQ, CUSTNMBR, ADRSCODE, BSSI_Total_Leasable_Sq_F, BSSI_Total_Leasable_Sq_M, NOTEINDX, DEX_ROW_ID FROM .B4602246 ORDER BY BSSI_Tenant_Lease_Number DESC, LNITMSEQ DESC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LNITMSEQ, CUSTNMBR, ADRSCODE, BSSI_Total_Leasable_Sq_F, BSSI_Total_Leasable_Sq_M, NOTEINDX, DEX_ROW_ID FROM .B4602246 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY BSSI_Tenant_Lease_Number DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LNITMSEQ, CUSTNMBR, ADRSCODE, BSSI_Total_Leasable_Sq_F, BSSI_Total_Leasable_Sq_M, NOTEINDX, DEX_ROW_ID FROM .B4602246 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY BSSI_Tenant_Lease_Number DESC, LNITMSEQ DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602246L_1] TO [DYNGRP]
GO
