SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05030L_5] (@Return_Record_Type_RS smallint, @RETDOCID_RS char(15), @CMPNTSEQ_RS int, @LNSEQNBR_RS numeric(19,5), @LINITMTYP_RS char(3), @SVC_Process_SEQ_Number_RS numeric(19,5), @POSTED_RS tinyint, @SVC_Distribution_Type_RS smallint, @SEQNUMBR_RS int, @Return_Record_Type_RE smallint, @RETDOCID_RE char(15), @CMPNTSEQ_RE int, @LNSEQNBR_RE numeric(19,5), @LINITMTYP_RE char(3), @SVC_Process_SEQ_Number_RE numeric(19,5), @POSTED_RE tinyint, @SVC_Distribution_Type_RE smallint, @SEQNUMBR_RE int) AS  set nocount on IF @Return_Record_Type_RS IS NULL BEGIN SELECT TOP 25  Return_Record_Type, RETDOCID, LNSEQNBR, LINITMTYP, SEQNUMBR, SVC_Process_SEQ_Number, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC05030 ORDER BY Return_Record_Type DESC, RETDOCID DESC, CMPNTSEQ DESC, LNSEQNBR DESC, LINITMTYP DESC, SVC_Process_SEQ_Number DESC, POSTED DESC, SVC_Distribution_Type DESC, SEQNUMBR DESC END ELSE IF @Return_Record_Type_RS = @Return_Record_Type_RE BEGIN SELECT TOP 25  Return_Record_Type, RETDOCID, LNSEQNBR, LINITMTYP, SEQNUMBR, SVC_Process_SEQ_Number, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC05030 WHERE Return_Record_Type = @Return_Record_Type_RS AND RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND SVC_Process_SEQ_Number BETWEEN @SVC_Process_SEQ_Number_RS AND @SVC_Process_SEQ_Number_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY Return_Record_Type DESC, RETDOCID DESC, CMPNTSEQ DESC, LNSEQNBR DESC, LINITMTYP DESC, SVC_Process_SEQ_Number DESC, POSTED DESC, SVC_Distribution_Type DESC, SEQNUMBR DESC END ELSE BEGIN SELECT TOP 25  Return_Record_Type, RETDOCID, LNSEQNBR, LINITMTYP, SEQNUMBR, SVC_Process_SEQ_Number, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC05030 WHERE Return_Record_Type BETWEEN @Return_Record_Type_RS AND @Return_Record_Type_RE AND RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND SVC_Process_SEQ_Number BETWEEN @SVC_Process_SEQ_Number_RS AND @SVC_Process_SEQ_Number_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY Return_Record_Type DESC, RETDOCID DESC, CMPNTSEQ DESC, LNSEQNBR DESC, LINITMTYP DESC, SVC_Process_SEQ_Number DESC, POSTED DESC, SVC_Distribution_Type DESC, SEQNUMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05030L_5] TO [DYNGRP]
GO
