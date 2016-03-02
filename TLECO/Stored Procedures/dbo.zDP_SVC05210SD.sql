SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05210SD] (@Return_Record_Type smallint, @RETDOCID char(15), @LNSEQNBR numeric(19,5), @CMPNTSEQ int, @SVC_Process_SEQ_Number numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC05210 WHERE Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND LNSEQNBR = @LNSEQNBR AND CMPNTSEQ = @CMPNTSEQ AND SVC_Process_SEQ_Number = @SVC_Process_SEQ_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC05210 WHERE Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND LNSEQNBR = @LNSEQNBR AND CMPNTSEQ = @CMPNTSEQ AND SVC_Process_SEQ_Number = @SVC_Process_SEQ_Number SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05210SD] TO [DYNGRP]
GO
