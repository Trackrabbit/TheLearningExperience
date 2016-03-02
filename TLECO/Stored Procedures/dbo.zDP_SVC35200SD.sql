SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC35200SD] (@Return_Record_Type smallint, @RETDOCID char(15), @svcRMAComponentSeq int, @LNSEQNBR numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC35200 WHERE Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND svcRMAComponentSeq = @svcRMAComponentSeq AND LNSEQNBR = @LNSEQNBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC35200 WHERE Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND svcRMAComponentSeq = @svcRMAComponentSeq AND LNSEQNBR = @LNSEQNBR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC35200SD] TO [DYNGRP]
GO
