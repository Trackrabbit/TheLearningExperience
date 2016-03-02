SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640001F_2] (@BSSI_Tenant_Lease_Number_RS char(25), @BSSI_Charge_ID_RS char(25), @LOCNCODE_RS char(11), @LNITMSEQ_RS int, @BSSI_LocationCode_RS char(11), @BSSI_Tenant_Lease_Number_RE char(25), @BSSI_Charge_ID_RE char(25), @LOCNCODE_RE char(11), @LNITMSEQ_RE int, @BSSI_LocationCode_RE char(11)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Charge_ID, BSSI_LocationCode, LNITMSEQ, LNSEQNBR, LOCNCODE, BSSI_Total_Leasable_Sq_F, LOCNDSCR, DEX_ROW_ID FROM .B4640001 ORDER BY BSSI_Tenant_Lease_Number ASC, BSSI_Charge_ID ASC, LOCNCODE ASC, LNITMSEQ ASC, BSSI_LocationCode ASC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Charge_ID, BSSI_LocationCode, LNITMSEQ, LNSEQNBR, LOCNCODE, BSSI_Total_Leasable_Sq_F, LOCNDSCR, DEX_ROW_ID FROM .B4640001 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND BSSI_LocationCode BETWEEN @BSSI_LocationCode_RS AND @BSSI_LocationCode_RE ORDER BY BSSI_Tenant_Lease_Number ASC, BSSI_Charge_ID ASC, LOCNCODE ASC, LNITMSEQ ASC, BSSI_LocationCode ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Charge_ID, BSSI_LocationCode, LNITMSEQ, LNSEQNBR, LOCNCODE, BSSI_Total_Leasable_Sq_F, LOCNDSCR, DEX_ROW_ID FROM .B4640001 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND BSSI_LocationCode BETWEEN @BSSI_LocationCode_RS AND @BSSI_LocationCode_RE ORDER BY BSSI_Tenant_Lease_Number ASC, BSSI_Charge_ID ASC, LOCNCODE ASC, LNITMSEQ ASC, BSSI_LocationCode ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640001F_2] TO [DYNGRP]
GO
