SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05210SS_1] (@Return_Record_Type smallint, @RETDOCID char(15), @LNSEQNBR numeric(19,5), @CMPNTSEQ int, @SVC_Process_SEQ_Number numeric(19,5)) AS  set nocount on SELECT TOP 1  Return_Record_Type, RETDOCID, LNSEQNBR, SVC_Process_SEQ_Number, SLTSQNUM, Return_QTY, SVC_Process_QTY, SVC_Process_Type, Return_Disposition_Statu, SVC_Process_Status, SVC_Document_Number, SVC_IV_SEQ_Number, CMPNTSEQ, QTYTYPE, DEX_ROW_ID FROM .SVC05210 WHERE Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND LNSEQNBR = @LNSEQNBR AND CMPNTSEQ = @CMPNTSEQ AND SVC_Process_SEQ_Number = @SVC_Process_SEQ_Number ORDER BY Return_Record_Type ASC, RETDOCID ASC, LNSEQNBR ASC, CMPNTSEQ ASC, SVC_Process_SEQ_Number ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05210SS_1] TO [DYNGRP]
GO
