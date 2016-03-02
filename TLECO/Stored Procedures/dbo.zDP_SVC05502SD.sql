SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05502SD] (@SVC_RMA_Reason_Code char(3), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC05502 WHERE SVC_RMA_Reason_Code = @SVC_RMA_Reason_Code AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC05502 WHERE SVC_RMA_Reason_Code = @SVC_RMA_Reason_Code SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05502SD] TO [DYNGRP]
GO
