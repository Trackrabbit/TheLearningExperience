SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05212F_1] (@Return_Record_Type_RS smallint, @RETDOCID_RS char(15), @LNSEQNBR_RS numeric(19,5), @CMPNTSEQ_RS int, @SEQNUMBR_RS int, @Return_Record_Type_RE smallint, @RETDOCID_RE char(15), @LNSEQNBR_RE numeric(19,5), @CMPNTSEQ_RE int, @SEQNUMBR_RE int) AS  set nocount on IF @Return_Record_Type_RS IS NULL BEGIN SELECT TOP 25  Return_Record_Type, RETDOCID, LNSEQNBR, SEQNUMBR, ITEMNMBR, LOCNCODE, BIN, QTYTYPE, QUANTITY, POSTED, CMPNTSEQ, DEX_ROW_ID FROM .SVC05212 ORDER BY Return_Record_Type ASC, RETDOCID ASC, LNSEQNBR ASC, CMPNTSEQ ASC, SEQNUMBR ASC END ELSE IF @Return_Record_Type_RS = @Return_Record_Type_RE BEGIN SELECT TOP 25  Return_Record_Type, RETDOCID, LNSEQNBR, SEQNUMBR, ITEMNMBR, LOCNCODE, BIN, QTYTYPE, QUANTITY, POSTED, CMPNTSEQ, DEX_ROW_ID FROM .SVC05212 WHERE Return_Record_Type = @Return_Record_Type_RS AND RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY Return_Record_Type ASC, RETDOCID ASC, LNSEQNBR ASC, CMPNTSEQ ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  Return_Record_Type, RETDOCID, LNSEQNBR, SEQNUMBR, ITEMNMBR, LOCNCODE, BIN, QTYTYPE, QUANTITY, POSTED, CMPNTSEQ, DEX_ROW_ID FROM .SVC05212 WHERE Return_Record_Type BETWEEN @Return_Record_Type_RS AND @Return_Record_Type_RE AND RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY Return_Record_Type ASC, RETDOCID ASC, LNSEQNBR ASC, CMPNTSEQ ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05212F_1] TO [DYNGRP]
GO
