SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10105N_2] (@BS int, @SOPTYPE smallint, @SOPNUMBE char(21), @LNITMSEQ int, @DELETE1 tinyint, @DEX_ROW_ID int, @SOPTYPE_RS smallint, @SOPNUMBE_RS char(21), @LNITMSEQ_RS int, @DELETE1_RS tinyint, @SOPTYPE_RE smallint, @SOPNUMBE_RE char(21), @LNITMSEQ_RE int, @DELETE1_RE tinyint) AS  set nocount on IF @SOPTYPE_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, TAXDTLID, ACTINDX, BKOUTTAX, TXABLETX, STAXAMNT, ORSLSTAX, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, TAXDTSLS, ORTOTSLS, TDTTXSLS, ORTXSLS, TXDTOTTX, OTTAXPON, DELETE1, CURRNIDX, TRXSORCE, DEX_ROW_ID FROM .SOP10105 WHERE ( SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ AND DELETE1 = @DELETE1 AND DEX_ROW_ID > @DEX_ROW_ID OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ AND DELETE1 > @DELETE1 OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ > @LNITMSEQ OR SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC, SOPNUMBE ASC, LNITMSEQ ASC, DELETE1 ASC, DEX_ROW_ID ASC END ELSE IF @SOPTYPE_RS = @SOPTYPE_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, TAXDTLID, ACTINDX, BKOUTTAX, TXABLETX, STAXAMNT, ORSLSTAX, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, TAXDTSLS, ORTOTSLS, TDTTXSLS, ORTXSLS, TXDTOTTX, OTTAXPON, DELETE1, CURRNIDX, TRXSORCE, DEX_ROW_ID FROM .SOP10105 WHERE SOPTYPE = @SOPTYPE_RS AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND DELETE1 BETWEEN @DELETE1_RS AND @DELETE1_RE AND ( SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ AND DELETE1 = @DELETE1 AND DEX_ROW_ID > @DEX_ROW_ID OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ AND DELETE1 > @DELETE1 OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ > @LNITMSEQ OR SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC, SOPNUMBE ASC, LNITMSEQ ASC, DELETE1 ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, TAXDTLID, ACTINDX, BKOUTTAX, TXABLETX, STAXAMNT, ORSLSTAX, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, TAXDTSLS, ORTOTSLS, TDTTXSLS, ORTXSLS, TXDTOTTX, OTTAXPON, DELETE1, CURRNIDX, TRXSORCE, DEX_ROW_ID FROM .SOP10105 WHERE SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND DELETE1 BETWEEN @DELETE1_RS AND @DELETE1_RE AND ( SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ AND DELETE1 = @DELETE1 AND DEX_ROW_ID > @DEX_ROW_ID OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ AND DELETE1 > @DELETE1 OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ > @LNITMSEQ OR SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC, SOPNUMBE ASC, LNITMSEQ ASC, DELETE1 ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10105N_2] TO [DYNGRP]
GO