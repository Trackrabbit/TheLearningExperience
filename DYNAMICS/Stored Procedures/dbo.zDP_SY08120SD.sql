SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY08120SD] (@USERID char(15), @SectionID smallint, @SubSectionID smallint, @DICTID smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY08120 WHERE USERID = @USERID AND SectionID = @SectionID AND SubSectionID = @SubSectionID AND DICTID = @DICTID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY08120 WHERE USERID = @USERID AND SectionID = @SectionID AND SubSectionID = @SubSectionID AND DICTID = @DICTID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY08120SD] TO [DYNGRP]
GO
