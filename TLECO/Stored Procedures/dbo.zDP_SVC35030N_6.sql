SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC35030N_6] (@BS int, @Return_Record_Type smallint, @RETDOCID char(15), @POSTED tinyint, @SVC_Distribution_Type smallint, @ACTINDX int, @CMPNTSEQ int, @LNSEQNBR numeric(19,5), @SEQNUMBR int, @DEX_ROW_ID int, @Return_Record_Type_RS smallint, @RETDOCID_RS char(15), @POSTED_RS tinyint, @SVC_Distribution_Type_RS smallint, @ACTINDX_RS int, @CMPNTSEQ_RS int, @LNSEQNBR_RS numeric(19,5), @SEQNUMBR_RS int, @Return_Record_Type_RE smallint, @RETDOCID_RE char(15), @POSTED_RE tinyint, @SVC_Distribution_Type_RE smallint, @ACTINDX_RE int, @CMPNTSEQ_RE int, @LNSEQNBR_RE numeric(19,5), @SEQNUMBR_RE int) AS  set nocount on IF @Return_Record_Type_RS IS NULL BEGIN SELECT TOP 25  Return_Record_Type, RETDOCID, LNSEQNBR, LINITMTYP, SEQNUMBR, SVC_Process_SEQ_Number, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC35030 WHERE ( Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND ACTINDX = @ACTINDX AND CMPNTSEQ = @CMPNTSEQ AND LNSEQNBR = @LNSEQNBR AND SEQNUMBR = @SEQNUMBR AND DEX_ROW_ID > @DEX_ROW_ID OR Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND ACTINDX = @ACTINDX AND CMPNTSEQ = @CMPNTSEQ AND LNSEQNBR = @LNSEQNBR AND SEQNUMBR > @SEQNUMBR OR Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND ACTINDX = @ACTINDX AND CMPNTSEQ = @CMPNTSEQ AND LNSEQNBR > @LNSEQNBR OR Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND ACTINDX = @ACTINDX AND CMPNTSEQ > @CMPNTSEQ OR Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND ACTINDX > @ACTINDX OR Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED = @POSTED AND SVC_Distribution_Type > @SVC_Distribution_Type OR Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED > @POSTED OR Return_Record_Type = @Return_Record_Type AND RETDOCID > @RETDOCID OR Return_Record_Type > @Return_Record_Type ) ORDER BY Return_Record_Type ASC, RETDOCID ASC, POSTED ASC, SVC_Distribution_Type ASC, ACTINDX ASC, CMPNTSEQ ASC, LNSEQNBR ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE IF @Return_Record_Type_RS = @Return_Record_Type_RE BEGIN SELECT TOP 25  Return_Record_Type, RETDOCID, LNSEQNBR, LINITMTYP, SEQNUMBR, SVC_Process_SEQ_Number, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC35030 WHERE Return_Record_Type = @Return_Record_Type_RS AND RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND ACTINDX = @ACTINDX AND CMPNTSEQ = @CMPNTSEQ AND LNSEQNBR = @LNSEQNBR AND SEQNUMBR = @SEQNUMBR AND DEX_ROW_ID > @DEX_ROW_ID OR Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND ACTINDX = @ACTINDX AND CMPNTSEQ = @CMPNTSEQ AND LNSEQNBR = @LNSEQNBR AND SEQNUMBR > @SEQNUMBR OR Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND ACTINDX = @ACTINDX AND CMPNTSEQ = @CMPNTSEQ AND LNSEQNBR > @LNSEQNBR OR Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND ACTINDX = @ACTINDX AND CMPNTSEQ > @CMPNTSEQ OR Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND ACTINDX > @ACTINDX OR Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED = @POSTED AND SVC_Distribution_Type > @SVC_Distribution_Type OR Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED > @POSTED OR Return_Record_Type = @Return_Record_Type AND RETDOCID > @RETDOCID OR Return_Record_Type > @Return_Record_Type ) ORDER BY Return_Record_Type ASC, RETDOCID ASC, POSTED ASC, SVC_Distribution_Type ASC, ACTINDX ASC, CMPNTSEQ ASC, LNSEQNBR ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Return_Record_Type, RETDOCID, LNSEQNBR, LINITMTYP, SEQNUMBR, SVC_Process_SEQ_Number, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, CMPNTSEQ, DEX_ROW_ID FROM .SVC35030 WHERE Return_Record_Type BETWEEN @Return_Record_Type_RS AND @Return_Record_Type_RE AND RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND ACTINDX = @ACTINDX AND CMPNTSEQ = @CMPNTSEQ AND LNSEQNBR = @LNSEQNBR AND SEQNUMBR = @SEQNUMBR AND DEX_ROW_ID > @DEX_ROW_ID OR Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND ACTINDX = @ACTINDX AND CMPNTSEQ = @CMPNTSEQ AND LNSEQNBR = @LNSEQNBR AND SEQNUMBR > @SEQNUMBR OR Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND ACTINDX = @ACTINDX AND CMPNTSEQ = @CMPNTSEQ AND LNSEQNBR > @LNSEQNBR OR Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND ACTINDX = @ACTINDX AND CMPNTSEQ > @CMPNTSEQ OR Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED = @POSTED AND SVC_Distribution_Type = @SVC_Distribution_Type AND ACTINDX > @ACTINDX OR Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED = @POSTED AND SVC_Distribution_Type > @SVC_Distribution_Type OR Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND POSTED > @POSTED OR Return_Record_Type = @Return_Record_Type AND RETDOCID > @RETDOCID OR Return_Record_Type > @Return_Record_Type ) ORDER BY Return_Record_Type ASC, RETDOCID ASC, POSTED ASC, SVC_Distribution_Type ASC, ACTINDX ASC, CMPNTSEQ ASC, LNSEQNBR ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC35030N_6] TO [DYNGRP]
GO
