SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603600N_2] (@BS int, @BSSI_Tenant_Lease_Number char(25), @BSSI_Ground_Lease_Number char(25), @LOCNCODE char(11), @LNITMSEQ int, @LNSEQNBR numeric(19,5), @DEX_ROW_ID int, @BSSI_Tenant_Lease_Number_RS char(25), @BSSI_Ground_Lease_Number_RS char(25), @LOCNCODE_RS char(11), @LNITMSEQ_RS int, @LNSEQNBR_RS numeric(19,5), @BSSI_Tenant_Lease_Number_RE char(25), @BSSI_Ground_Lease_Number_RE char(25), @LOCNCODE_RE char(11), @LNITMSEQ_RE int, @LNSEQNBR_RE numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  VCHRNMBR, CNTRLTYP, APTVCHNM, SPCLDIST, DSTSQNUM, SEQNUMBR, BSSI_Tenant_Lease_Number, BSSI_Ground_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNITMSEQ, LNSEQNBR, DOCDATE, CURNCYID, INVODATE, SOPTYPE, INVCNMBR, BSSI_Is_Invoiced, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, BSSI_Is_Converted, BSSI_Doc_Status, BSSI_Exp_Amount, BSSI_Dummy, DEX_ROW_ID FROM .B4603600 WHERE ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ AND LNSEQNBR = @LNSEQNBR AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ AND LNSEQNBR > @LNSEQNBR OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ > @LNITMSEQ OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND LOCNCODE > @LOCNCODE OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number > @BSSI_Ground_Lease_Number OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, BSSI_Ground_Lease_Number ASC, LOCNCODE ASC, LNITMSEQ ASC, LNSEQNBR ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  VCHRNMBR, CNTRLTYP, APTVCHNM, SPCLDIST, DSTSQNUM, SEQNUMBR, BSSI_Tenant_Lease_Number, BSSI_Ground_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNITMSEQ, LNSEQNBR, DOCDATE, CURNCYID, INVODATE, SOPTYPE, INVCNMBR, BSSI_Is_Invoiced, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, BSSI_Is_Converted, BSSI_Doc_Status, BSSI_Exp_Amount, BSSI_Dummy, DEX_ROW_ID FROM .B4603600 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND BSSI_Ground_Lease_Number BETWEEN @BSSI_Ground_Lease_Number_RS AND @BSSI_Ground_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ AND LNSEQNBR = @LNSEQNBR AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ AND LNSEQNBR > @LNSEQNBR OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ > @LNITMSEQ OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND LOCNCODE > @LOCNCODE OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number > @BSSI_Ground_Lease_Number OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, BSSI_Ground_Lease_Number ASC, LOCNCODE ASC, LNITMSEQ ASC, LNSEQNBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  VCHRNMBR, CNTRLTYP, APTVCHNM, SPCLDIST, DSTSQNUM, SEQNUMBR, BSSI_Tenant_Lease_Number, BSSI_Ground_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNITMSEQ, LNSEQNBR, DOCDATE, CURNCYID, INVODATE, SOPTYPE, INVCNMBR, BSSI_Is_Invoiced, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, BSSI_Is_Converted, BSSI_Doc_Status, BSSI_Exp_Amount, BSSI_Dummy, DEX_ROW_ID FROM .B4603600 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND BSSI_Ground_Lease_Number BETWEEN @BSSI_Ground_Lease_Number_RS AND @BSSI_Ground_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ AND LNSEQNBR = @LNSEQNBR AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ AND LNSEQNBR > @LNSEQNBR OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ > @LNITMSEQ OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND LOCNCODE > @LOCNCODE OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Ground_Lease_Number > @BSSI_Ground_Lease_Number OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, BSSI_Ground_Lease_Number ASC, LOCNCODE ASC, LNITMSEQ ASC, LNSEQNBR ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603600N_2] TO [DYNGRP]
GO
