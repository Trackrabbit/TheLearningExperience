SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10105F_1] (@SOPTYPE_RS smallint, @SOPNUMBE_RS char(21), @LNITMSEQ_RS int, @TAXDTLID_RS char(15), @SOPTYPE_RE smallint, @SOPNUMBE_RE char(21), @LNITMSEQ_RE int, @TAXDTLID_RE char(15)) AS  set nocount on IF @SOPTYPE_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, TAXDTLID, ACTINDX, BKOUTTAX, TXABLETX, STAXAMNT, ORSLSTAX, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, TAXDTSLS, ORTOTSLS, TDTTXSLS, ORTXSLS, TXDTOTTX, OTTAXPON, DELETE1, CURRNIDX, TRXSORCE, DEX_ROW_ID FROM .SOP10105 ORDER BY SOPTYPE ASC, SOPNUMBE ASC, LNITMSEQ ASC, TAXDTLID ASC END ELSE IF @SOPTYPE_RS = @SOPTYPE_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, TAXDTLID, ACTINDX, BKOUTTAX, TXABLETX, STAXAMNT, ORSLSTAX, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, TAXDTSLS, ORTOTSLS, TDTTXSLS, ORTXSLS, TXDTOTTX, OTTAXPON, DELETE1, CURRNIDX, TRXSORCE, DEX_ROW_ID FROM .SOP10105 WHERE SOPTYPE = @SOPTYPE_RS AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND TAXDTLID BETWEEN @TAXDTLID_RS AND @TAXDTLID_RE ORDER BY SOPTYPE ASC, SOPNUMBE ASC, LNITMSEQ ASC, TAXDTLID ASC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, TAXDTLID, ACTINDX, BKOUTTAX, TXABLETX, STAXAMNT, ORSLSTAX, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, TAXDTSLS, ORTOTSLS, TDTTXSLS, ORTXSLS, TXDTOTTX, OTTAXPON, DELETE1, CURRNIDX, TRXSORCE, DEX_ROW_ID FROM .SOP10105 WHERE SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND TAXDTLID BETWEEN @TAXDTLID_RS AND @TAXDTLID_RE ORDER BY SOPTYPE ASC, SOPNUMBE ASC, LNITMSEQ ASC, TAXDTLID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10105F_1] TO [DYNGRP]
GO