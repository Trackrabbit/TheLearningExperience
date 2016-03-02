SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602245UN_3] (@BS int, @BSSI_Tenant_Lease_Number char(25), @BSSI_Tenant_Lease_Number_RS char(25), @BSSI_Tenant_Lease_Number_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, JRNENTRY, SOPTYPE, SOPNUMBE, BSSI_SOP_LINE_Sequence, BSSI_Line_SL_Amount, MDFUSRID, MODIFDT, BSSI_Dummy, DEX_ROW_ID FROM .B4602245 WHERE ( BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, JRNENTRY, SOPTYPE, SOPNUMBE, BSSI_SOP_LINE_Sequence, BSSI_Line_SL_Amount, MDFUSRID, MODIFDT, BSSI_Dummy, DEX_ROW_ID FROM .B4602245 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND ( BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, JRNENTRY, SOPTYPE, SOPNUMBE, BSSI_SOP_LINE_Sequence, BSSI_Line_SL_Amount, MDFUSRID, MODIFDT, BSSI_Dummy, DEX_ROW_ID FROM .B4602245 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND ( BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602245UN_3] TO [DYNGRP]
GO
