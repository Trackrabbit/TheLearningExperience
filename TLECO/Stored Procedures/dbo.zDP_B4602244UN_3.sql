SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602244UN_3] (@BS int, @BSSI_Tenant_Lease_Number char(25), @BSSI_Tenant_Lease_Number_RS char(25), @BSSI_Tenant_Lease_Number_RE char(25)) AS /* 12.00.0311.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, SOPTYPE, SOPNUMBE, BSSI_SOP_LINE_Sequence, CUSTNMBR, BSSI_Dummy, DEX_ROW_ID FROM .B4602244 WHERE ( BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, SOPTYPE, SOPNUMBE, BSSI_SOP_LINE_Sequence, CUSTNMBR, BSSI_Dummy, DEX_ROW_ID FROM .B4602244 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND ( BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, SOPTYPE, SOPNUMBE, BSSI_SOP_LINE_Sequence, CUSTNMBR, BSSI_Dummy, DEX_ROW_ID FROM .B4602244 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND ( BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602244UN_3] TO [DYNGRP]
GO
