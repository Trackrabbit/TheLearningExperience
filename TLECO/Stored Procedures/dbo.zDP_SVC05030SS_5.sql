SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05030SS_5] (@Return_Record_Type smallint, @RETDOCID char(15), @CMPNTSEQ int, @LNSEQNBR numeric(19,5), @LINITMTYP char(3), @SVC_Process_SEQ_Number numeric(19,5), @POSTED tinyint, @SVC_Distribution_Type smallint, @SEQNUMBR int) AS  set nocount on SELECT TOP 1  Return_Record_Type, RETDOCID, LNSEQNBR, LINITMTYP, SEQNUMBR, SVC_Process_SEQ_Number, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC05030 WHERE Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND CMPNTSEQ = @CMPNTSEQ AND LNSEQNBR = @LNSEQNBR AND LINITMTYP = @LINITMTYP AND SVC_Process_SEQ_Number = @SVC_Process_SEQ_Number AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND SEQNUMBR = @SEQNUMBR ORDER BY Return_Record_Type ASC, RETDOCID ASC, CMPNTSEQ ASC, LNSEQNBR ASC, LINITMTYP ASC, SVC_Process_SEQ_Number ASC, POSTED ASC, SVC_Distribution_Type ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05030SS_5] TO [DYNGRP]
GO
