SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00631L_2] (@CONSTS_RS smallint, @CONTNBR_RS char(11), @LNSEQNBR_RS numeric(19,5), @SVC_Invoice_SEQ_Number_RS int, @POSTED_RS tinyint, @SEQNUMBR_RS int, @SVC_Distribution_Type_RS smallint, @CONSTS_RE smallint, @CONTNBR_RE char(11), @LNSEQNBR_RE numeric(19,5), @SVC_Invoice_SEQ_Number_RE int, @POSTED_RE tinyint, @SEQNUMBR_RE int, @SVC_Distribution_Type_RE smallint) AS  set nocount on IF @CONSTS_RS IS NULL BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, SVC_Invoice_SEQ_Number, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC00631 ORDER BY CONSTS DESC, CONTNBR DESC, LNSEQNBR DESC, SVC_Invoice_SEQ_Number DESC, POSTED DESC, SEQNUMBR DESC, SVC_Distribution_Type DESC END ELSE IF @CONSTS_RS = @CONSTS_RE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, SVC_Invoice_SEQ_Number, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC00631 WHERE CONSTS = @CONSTS_RS AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND SVC_Invoice_SEQ_Number BETWEEN @SVC_Invoice_SEQ_Number_RS AND @SVC_Invoice_SEQ_Number_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE ORDER BY CONSTS DESC, CONTNBR DESC, LNSEQNBR DESC, SVC_Invoice_SEQ_Number DESC, POSTED DESC, SEQNUMBR DESC, SVC_Distribution_Type DESC END ELSE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, SVC_Invoice_SEQ_Number, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC00631 WHERE CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND SVC_Invoice_SEQ_Number BETWEEN @SVC_Invoice_SEQ_Number_RS AND @SVC_Invoice_SEQ_Number_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE ORDER BY CONSTS DESC, CONTNBR DESC, LNSEQNBR DESC, SVC_Invoice_SEQ_Number DESC, POSTED DESC, SEQNUMBR DESC, SVC_Distribution_Type DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00631L_2] TO [DYNGRP]
GO
