SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC35210SI] (@Return_Record_Type smallint, @RETDOCID char(15), @LNSEQNBR numeric(19,5), @SVC_Process_SEQ_Number numeric(19,5), @SLTSQNUM int, @Return_QTY numeric(19,5), @SVC_Process_QTY numeric(19,5), @SVC_Process_Type smallint, @Return_Disposition_Statu smallint, @SVC_Process_Status char(3), @SVC_Document_Number char(31), @SVC_IV_SEQ_Number numeric(19,5), @CMPNTSEQ int, @QTYTYPE smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC35210 (Return_Record_Type, RETDOCID, LNSEQNBR, SVC_Process_SEQ_Number, SLTSQNUM, Return_QTY, SVC_Process_QTY, SVC_Process_Type, Return_Disposition_Statu, SVC_Process_Status, SVC_Document_Number, SVC_IV_SEQ_Number, CMPNTSEQ, QTYTYPE) VALUES ( @Return_Record_Type, @RETDOCID, @LNSEQNBR, @SVC_Process_SEQ_Number, @SLTSQNUM, @Return_QTY, @SVC_Process_QTY, @SVC_Process_Type, @Return_Disposition_Statu, @SVC_Process_Status, @SVC_Document_Number, @SVC_IV_SEQ_Number, @CMPNTSEQ, @QTYTYPE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC35210SI] TO [DYNGRP]
GO
