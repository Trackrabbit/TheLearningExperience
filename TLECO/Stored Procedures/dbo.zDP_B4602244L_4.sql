SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602244L_4] (@BSSI_Tenant_Lease_Number_RS char(25), @LOCNCODE_RS char(11), @LNITMSEQ_RS int, @LNSEQNBR_RS numeric(19,5), @CUSTNMBR_RS char(15), @BSSI_Tenant_Lease_Number_RE char(25), @LOCNCODE_RE char(11), @LNITMSEQ_RE int, @LNSEQNBR_RE numeric(19,5), @CUSTNMBR_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, SOPTYPE, SOPNUMBE, BSSI_SOP_LINE_Sequence, CUSTNMBR, BSSI_Dummy, DEX_ROW_ID FROM .B4602244 ORDER BY BSSI_Tenant_Lease_Number DESC, LOCNCODE DESC, LNITMSEQ DESC, LNSEQNBR DESC, CUSTNMBR DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, SOPTYPE, SOPNUMBE, BSSI_SOP_LINE_Sequence, CUSTNMBR, BSSI_Dummy, DEX_ROW_ID FROM .B4602244 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY BSSI_Tenant_Lease_Number DESC, LOCNCODE DESC, LNITMSEQ DESC, LNSEQNBR DESC, CUSTNMBR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, SOPTYPE, SOPNUMBE, BSSI_SOP_LINE_Sequence, CUSTNMBR, BSSI_Dummy, DEX_ROW_ID FROM .B4602244 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY BSSI_Tenant_Lease_Number DESC, LOCNCODE DESC, LNITMSEQ DESC, LNSEQNBR DESC, CUSTNMBR DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602244L_4] TO [DYNGRP]
GO