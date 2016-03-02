SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC07100SD] (@SVC_Issue_Number int, @SRVRECTYPE smallint, @CALLNBR char(11), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC07100 WHERE SVC_Issue_Number = @SVC_Issue_Number AND SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC07100 WHERE SVC_Issue_Number = @SVC_Issue_Number AND SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC07100SD] TO [DYNGRP]
GO
