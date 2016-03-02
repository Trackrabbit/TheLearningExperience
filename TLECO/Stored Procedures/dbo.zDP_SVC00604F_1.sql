SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00604F_1] (@CONSTS_RS smallint, @CONTNBR_RS char(11), @LNSEQNBR_RS numeric(19,5), @YEAR1_RS smallint, @PERIODID_RS smallint, @LNITMSEQ_RS int, @CONSTS_RE smallint, @CONTNBR_RE char(11), @LNSEQNBR_RE numeric(19,5), @YEAR1_RE smallint, @PERIODID_RE smallint, @LNITMSEQ_RE int) AS  set nocount on IF @CONSTS_RS IS NULL BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, YEAR1, PERIODID, LNITMSEQ, Status, POSTEDDT, Transaction_Date, USERID, PSTDAMNT, Originating_PostedAmount, Source_Trx_Document_Type, SourceTrxDocumentNumber, Transaction_Amount, OrigTransactionAmount, SVC_Coverage_Start_Date, SVC_Coverage_End_Date, SVC_Invoice_Credit_Amoun, OrigInvCreditAmt, DSCDLRAM, ORDDLRAT, Net_Transaction_Amount, OrigNetTransactionAmount, DEX_ROW_ID FROM .SVC00604 ORDER BY CONSTS ASC, CONTNBR ASC, LNSEQNBR ASC, YEAR1 ASC, PERIODID ASC, LNITMSEQ ASC END ELSE IF @CONSTS_RS = @CONSTS_RE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, YEAR1, PERIODID, LNITMSEQ, Status, POSTEDDT, Transaction_Date, USERID, PSTDAMNT, Originating_PostedAmount, Source_Trx_Document_Type, SourceTrxDocumentNumber, Transaction_Amount, OrigTransactionAmount, SVC_Coverage_Start_Date, SVC_Coverage_End_Date, SVC_Invoice_Credit_Amoun, OrigInvCreditAmt, DSCDLRAM, ORDDLRAT, Net_Transaction_Amount, OrigNetTransactionAmount, DEX_ROW_ID FROM .SVC00604 WHERE CONSTS = @CONSTS_RS AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY CONSTS ASC, CONTNBR ASC, LNSEQNBR ASC, YEAR1 ASC, PERIODID ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, YEAR1, PERIODID, LNITMSEQ, Status, POSTEDDT, Transaction_Date, USERID, PSTDAMNT, Originating_PostedAmount, Source_Trx_Document_Type, SourceTrxDocumentNumber, Transaction_Amount, OrigTransactionAmount, SVC_Coverage_Start_Date, SVC_Coverage_End_Date, SVC_Invoice_Credit_Amoun, OrigInvCreditAmt, DSCDLRAM, ORDDLRAT, Net_Transaction_Amount, OrigNetTransactionAmount, DEX_ROW_ID FROM .SVC00604 WHERE CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY CONSTS ASC, CONTNBR ASC, LNSEQNBR ASC, YEAR1 ASC, PERIODID ASC, LNITMSEQ ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00604F_1] TO [DYNGRP]
GO
