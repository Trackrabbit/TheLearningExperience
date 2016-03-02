SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07210SD] (@USERID char(15), @DICTID smallint, @FormID smallint, @ColSequence smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY07210 WHERE USERID = @USERID AND DICTID = @DICTID AND FormID = @FormID AND ColSequence = @ColSequence AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY07210 WHERE USERID = @USERID AND DICTID = @DICTID AND FormID = @FormID AND ColSequence = @ColSequence SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07210SD] TO [DYNGRP]
GO
