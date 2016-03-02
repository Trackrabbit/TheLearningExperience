SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30230SD] (@SRVRECTYPE smallint, @CALLNBR char(11), @SEQNUMBR int, @SVC_Distribution_Type smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC30230 WHERE SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND SEQNUMBR = @SEQNUMBR AND SVC_Distribution_Type = @SVC_Distribution_Type AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC30230 WHERE SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND SEQNUMBR = @SEQNUMBR AND SVC_Distribution_Type = @SVC_Distribution_Type SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30230SD] TO [DYNGRP]
GO
