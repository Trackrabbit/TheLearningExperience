SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IF000005SD] (@USERID char(15), @BACHNUMB char(15), @JRNENTRY int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .IF000005 WHERE USERID = @USERID AND BACHNUMB = @BACHNUMB AND JRNENTRY = @JRNENTRY AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .IF000005 WHERE USERID = @USERID AND BACHNUMB = @BACHNUMB AND JRNENTRY = @JRNENTRY SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IF000005SD] TO [DYNGRP]
GO
