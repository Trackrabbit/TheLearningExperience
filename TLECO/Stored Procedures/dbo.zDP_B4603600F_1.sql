SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603600F_1] (@VCHRNMBR_RS char(21), @CNTRLTYP_RS smallint, @APTVCHNM_RS char(21), @SPCLDIST_RS smallint, @DSTSQNUM_RS int, @SEQNUMBR_RS int, @VCHRNMBR_RE char(21), @CNTRLTYP_RE smallint, @APTVCHNM_RE char(21), @SPCLDIST_RE smallint, @DSTSQNUM_RE int, @SEQNUMBR_RE int) AS /* 12.00.0270.000 */ set nocount on IF @VCHRNMBR_RS IS NULL BEGIN SELECT TOP 25  VCHRNMBR, CNTRLTYP, APTVCHNM, SPCLDIST, DSTSQNUM, SEQNUMBR, BSSI_Tenant_Lease_Number, BSSI_Ground_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNITMSEQ, LNSEQNBR, DOCDATE, CURNCYID, INVODATE, SOPTYPE, INVCNMBR, BSSI_Is_Invoiced, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, BSSI_Is_Converted, BSSI_Doc_Status, BSSI_Exp_Amount, BSSI_Dummy, DEX_ROW_ID FROM .B4603600 ORDER BY VCHRNMBR ASC, CNTRLTYP ASC, APTVCHNM ASC, SPCLDIST ASC, DSTSQNUM ASC, SEQNUMBR ASC END ELSE IF @VCHRNMBR_RS = @VCHRNMBR_RE BEGIN SELECT TOP 25  VCHRNMBR, CNTRLTYP, APTVCHNM, SPCLDIST, DSTSQNUM, SEQNUMBR, BSSI_Tenant_Lease_Number, BSSI_Ground_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNITMSEQ, LNSEQNBR, DOCDATE, CURNCYID, INVODATE, SOPTYPE, INVCNMBR, BSSI_Is_Invoiced, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, BSSI_Is_Converted, BSSI_Doc_Status, BSSI_Exp_Amount, BSSI_Dummy, DEX_ROW_ID FROM .B4603600 WHERE VCHRNMBR = @VCHRNMBR_RS AND CNTRLTYP BETWEEN @CNTRLTYP_RS AND @CNTRLTYP_RE AND APTVCHNM BETWEEN @APTVCHNM_RS AND @APTVCHNM_RE AND SPCLDIST BETWEEN @SPCLDIST_RS AND @SPCLDIST_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY VCHRNMBR ASC, CNTRLTYP ASC, APTVCHNM ASC, SPCLDIST ASC, DSTSQNUM ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  VCHRNMBR, CNTRLTYP, APTVCHNM, SPCLDIST, DSTSQNUM, SEQNUMBR, BSSI_Tenant_Lease_Number, BSSI_Ground_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNITMSEQ, LNSEQNBR, DOCDATE, CURNCYID, INVODATE, SOPTYPE, INVCNMBR, BSSI_Is_Invoiced, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, BSSI_Is_Converted, BSSI_Doc_Status, BSSI_Exp_Amount, BSSI_Dummy, DEX_ROW_ID FROM .B4603600 WHERE VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND CNTRLTYP BETWEEN @CNTRLTYP_RS AND @CNTRLTYP_RE AND APTVCHNM BETWEEN @APTVCHNM_RS AND @APTVCHNM_RE AND SPCLDIST BETWEEN @SPCLDIST_RS AND @SPCLDIST_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY VCHRNMBR ASC, CNTRLTYP ASC, APTVCHNM ASC, SPCLDIST ASC, DSTSQNUM ASC, SEQNUMBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603600F_1] TO [DYNGRP]
GO
