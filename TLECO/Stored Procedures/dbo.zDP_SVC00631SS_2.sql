SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00631SS_2] (@CONSTS smallint, @CONTNBR char(11), @LNSEQNBR numeric(19,5), @SVC_Invoice_SEQ_Number int, @POSTED tinyint, @SEQNUMBR int, @SVC_Distribution_Type smallint) AS  set nocount on SELECT TOP 1  CONSTS, CONTNBR, LNSEQNBR, SVC_Invoice_SEQ_Number, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC00631 WHERE CONSTS = @CONSTS AND CONTNBR = @CONTNBR AND LNSEQNBR = @LNSEQNBR AND SVC_Invoice_SEQ_Number = @SVC_Invoice_SEQ_Number AND POSTED = @POSTED AND SEQNUMBR = @SEQNUMBR AND SVC_Distribution_Type = @SVC_Distribution_Type ORDER BY CONSTS ASC, CONTNBR ASC, LNSEQNBR ASC, SVC_Invoice_SEQ_Number ASC, POSTED ASC, SEQNUMBR ASC, SVC_Distribution_Type ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00631SS_2] TO [DYNGRP]
GO
