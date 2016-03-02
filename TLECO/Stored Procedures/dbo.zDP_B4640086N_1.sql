SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640086N_1] (@BS int, @BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @LNITMSEQ int, @LNSEQNBR numeric(19,5), @BSSI_LineSeqNumber numeric(19,5), @BSSI_Tenant_Lease_Number_RS char(25), @LOCNCODE_RS char(11), @LNITMSEQ_RS int, @LNSEQNBR_RS numeric(19,5), @BSSI_LineSeqNumber_RS numeric(19,5), @BSSI_Tenant_Lease_Number_RE char(25), @LOCNCODE_RE char(11), @LNITMSEQ_RE int, @LNSEQNBR_RE numeric(19,5), @BSSI_LineSeqNumber_RE numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_LineSeqNumber, STRTDATE, ENDDATE, BSSI_Sales_Amount, SOPNUMBE, SOPTYPE, BSSI_AdjustedAmount, BSSI_Adjustment, DEX_ROW_ID FROM .B4640086 WHERE ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ AND LNSEQNBR = @LNSEQNBR AND BSSI_LineSeqNumber > @BSSI_LineSeqNumber OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ AND LNSEQNBR > @LNSEQNBR OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ > @LNITMSEQ OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE > @LOCNCODE OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, LNITMSEQ ASC, LNSEQNBR ASC, BSSI_LineSeqNumber ASC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_LineSeqNumber, STRTDATE, ENDDATE, BSSI_Sales_Amount, SOPNUMBE, SOPTYPE, BSSI_AdjustedAmount, BSSI_Adjustment, DEX_ROW_ID FROM .B4640086 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND BSSI_LineSeqNumber BETWEEN @BSSI_LineSeqNumber_RS AND @BSSI_LineSeqNumber_RE AND ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ AND LNSEQNBR = @LNSEQNBR AND BSSI_LineSeqNumber > @BSSI_LineSeqNumber OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ AND LNSEQNBR > @LNSEQNBR OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ > @LNITMSEQ OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE > @LOCNCODE OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, LNITMSEQ ASC, LNSEQNBR ASC, BSSI_LineSeqNumber ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_LineSeqNumber, STRTDATE, ENDDATE, BSSI_Sales_Amount, SOPNUMBE, SOPTYPE, BSSI_AdjustedAmount, BSSI_Adjustment, DEX_ROW_ID FROM .B4640086 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND BSSI_LineSeqNumber BETWEEN @BSSI_LineSeqNumber_RS AND @BSSI_LineSeqNumber_RE AND ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ AND LNSEQNBR = @LNSEQNBR AND BSSI_LineSeqNumber > @BSSI_LineSeqNumber OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ AND LNSEQNBR > @LNSEQNBR OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ > @LNITMSEQ OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE > @LOCNCODE OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, LNITMSEQ ASC, LNSEQNBR ASC, BSSI_LineSeqNumber ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640086N_1] TO [DYNGRP]
GO
