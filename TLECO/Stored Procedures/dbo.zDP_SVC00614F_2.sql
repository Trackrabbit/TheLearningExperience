SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00614F_2] (@USERID_RS char(15), @TRXSORCE_RS char(13), @YEAR1_RS smallint, @PERIODID_RS smallint, @CONSTS_RS smallint, @CONTNBR_RS char(11), @LNSEQNBR_RS numeric(19,5), @LNITMSEQ_RS int, @USERID_RE char(15), @TRXSORCE_RE char(13), @YEAR1_RE smallint, @PERIODID_RE smallint, @CONSTS_RE smallint, @CONTNBR_RE char(11), @LNSEQNBR_RE numeric(19,5), @LNITMSEQ_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, TRXSORCE, CONSTS, CONTNBR, LNSEQNBR, YEAR1, PERIODID, LNITMSEQ, Status, POSTEDDT, Transaction_Date, PSTDAMNT, Source_Trx_Document_Type, SourceTrxDocumentNumber, Transaction_Amount, SVC_Coverage_Start_Date, SVC_Coverage_End_Date, DSCDLRAM, Net_Transaction_Amount, ERMSGNUM, ERRDESCR, DEX_ROW_ID FROM .SVC00614 ORDER BY USERID ASC, TRXSORCE ASC, YEAR1 ASC, PERIODID ASC, CONSTS ASC, CONTNBR ASC, LNSEQNBR ASC, LNITMSEQ ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, TRXSORCE, CONSTS, CONTNBR, LNSEQNBR, YEAR1, PERIODID, LNITMSEQ, Status, POSTEDDT, Transaction_Date, PSTDAMNT, Source_Trx_Document_Type, SourceTrxDocumentNumber, Transaction_Amount, SVC_Coverage_Start_Date, SVC_Coverage_End_Date, DSCDLRAM, Net_Transaction_Amount, ERMSGNUM, ERRDESCR, DEX_ROW_ID FROM .SVC00614 WHERE USERID = @USERID_RS AND TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY USERID ASC, TRXSORCE ASC, YEAR1 ASC, PERIODID ASC, CONSTS ASC, CONTNBR ASC, LNSEQNBR ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  USERID, TRXSORCE, CONSTS, CONTNBR, LNSEQNBR, YEAR1, PERIODID, LNITMSEQ, Status, POSTEDDT, Transaction_Date, PSTDAMNT, Source_Trx_Document_Type, SourceTrxDocumentNumber, Transaction_Amount, SVC_Coverage_Start_Date, SVC_Coverage_End_Date, DSCDLRAM, Net_Transaction_Amount, ERMSGNUM, ERRDESCR, DEX_ROW_ID FROM .SVC00614 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY USERID ASC, TRXSORCE ASC, YEAR1 ASC, PERIODID ASC, CONSTS ASC, CONTNBR ASC, LNSEQNBR ASC, LNITMSEQ ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00614F_2] TO [DYNGRP]
GO
