SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_UPR10304SD] (@CMPANYID smallint, @BACHNUMB char(15), @UPRBCHOR smallint, @USERID char(15), @UPRBCHST smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .UPR10304 WHERE CMPANYID = @CMPANYID AND BACHNUMB = @BACHNUMB AND UPRBCHOR = @UPRBCHOR AND USERID = @USERID AND UPRBCHST = @UPRBCHST AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .UPR10304 WHERE CMPANYID = @CMPANYID AND BACHNUMB = @BACHNUMB AND UPRBCHOR = @UPRBCHOR AND USERID = @USERID AND UPRBCHST = @UPRBCHST SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10304SD] TO [DYNGRP]
GO
