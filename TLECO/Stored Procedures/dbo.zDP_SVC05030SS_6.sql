SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05030SS_6] (@Return_Record_Type smallint, @RETDOCID char(15), @POSTED tinyint, @SVC_Distribution_Type smallint, @ACTINDX int, @CMPNTSEQ int, @LNSEQNBR numeric(19,5), @SEQNUMBR int) AS  set nocount on SELECT TOP 1  Return_Record_Type, RETDOCID, LNSEQNBR, LINITMTYP, SEQNUMBR, SVC_Process_SEQ_Number, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC05030 WHERE Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND ACTINDX = @ACTINDX AND CMPNTSEQ = @CMPNTSEQ AND LNSEQNBR = @LNSEQNBR AND SEQNUMBR = @SEQNUMBR ORDER BY Return_Record_Type ASC, RETDOCID ASC, POSTED ASC, SVC_Distribution_Type ASC, ACTINDX ASC, CMPNTSEQ ASC, LNSEQNBR ASC, SEQNUMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05030SS_6] TO [DYNGRP]
GO
