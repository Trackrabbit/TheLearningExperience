SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC10500N_1] (@BS int, @DOCTYPE smallint, @INVCNMBR char(21), @LNITMSEQ int, @TAXDTLID char(15), @DOCTYPE_RS smallint, @INVCNMBR_RS char(21), @LNITMSEQ_RS int, @TAXDTLID_RS char(15), @DOCTYPE_RE smallint, @INVCNMBR_RE char(21), @LNITMSEQ_RE int, @TAXDTLID_RE char(15)) AS  set nocount on IF @DOCTYPE_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, LNITMSEQ, TAXDTLID, ACTINDX, BKOUTTAX, TXABLETX, STAXAMNT, FRTTXAMT, MSCTXAMT, TAXDTSLS, TDTTXSLS, TXDTOTTX, DELETE1, TRXSORCE, DEX_ROW_ID FROM .IVC10500 WHERE ( DOCTYPE = @DOCTYPE AND INVCNMBR = @INVCNMBR AND LNITMSEQ = @LNITMSEQ AND TAXDTLID > @TAXDTLID OR DOCTYPE = @DOCTYPE AND INVCNMBR = @INVCNMBR AND LNITMSEQ > @LNITMSEQ OR DOCTYPE = @DOCTYPE AND INVCNMBR > @INVCNMBR OR DOCTYPE > @DOCTYPE ) ORDER BY DOCTYPE ASC, INVCNMBR ASC, LNITMSEQ ASC, TAXDTLID ASC END ELSE IF @DOCTYPE_RS = @DOCTYPE_RE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, LNITMSEQ, TAXDTLID, ACTINDX, BKOUTTAX, TXABLETX, STAXAMNT, FRTTXAMT, MSCTXAMT, TAXDTSLS, TDTTXSLS, TXDTOTTX, DELETE1, TRXSORCE, DEX_ROW_ID FROM .IVC10500 WHERE DOCTYPE = @DOCTYPE_RS AND INVCNMBR BETWEEN @INVCNMBR_RS AND @INVCNMBR_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND TAXDTLID BETWEEN @TAXDTLID_RS AND @TAXDTLID_RE AND ( DOCTYPE = @DOCTYPE AND INVCNMBR = @INVCNMBR AND LNITMSEQ = @LNITMSEQ AND TAXDTLID > @TAXDTLID OR DOCTYPE = @DOCTYPE AND INVCNMBR = @INVCNMBR AND LNITMSEQ > @LNITMSEQ OR DOCTYPE = @DOCTYPE AND INVCNMBR > @INVCNMBR OR DOCTYPE > @DOCTYPE ) ORDER BY DOCTYPE ASC, INVCNMBR ASC, LNITMSEQ ASC, TAXDTLID ASC END ELSE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, LNITMSEQ, TAXDTLID, ACTINDX, BKOUTTAX, TXABLETX, STAXAMNT, FRTTXAMT, MSCTXAMT, TAXDTSLS, TDTTXSLS, TXDTOTTX, DELETE1, TRXSORCE, DEX_ROW_ID FROM .IVC10500 WHERE DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND INVCNMBR BETWEEN @INVCNMBR_RS AND @INVCNMBR_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND TAXDTLID BETWEEN @TAXDTLID_RS AND @TAXDTLID_RE AND ( DOCTYPE = @DOCTYPE AND INVCNMBR = @INVCNMBR AND LNITMSEQ = @LNITMSEQ AND TAXDTLID > @TAXDTLID OR DOCTYPE = @DOCTYPE AND INVCNMBR = @INVCNMBR AND LNITMSEQ > @LNITMSEQ OR DOCTYPE = @DOCTYPE AND INVCNMBR > @INVCNMBR OR DOCTYPE > @DOCTYPE ) ORDER BY DOCTYPE ASC, INVCNMBR ASC, LNITMSEQ ASC, TAXDTLID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC10500N_1] TO [DYNGRP]
GO
