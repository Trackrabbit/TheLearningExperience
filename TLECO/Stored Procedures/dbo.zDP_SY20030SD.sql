SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY20030SD] (@TemplateID int, @EntityTypeID int, @EntityIDValue char(31), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY20030 WHERE TemplateID = @TemplateID AND EntityTypeID = @EntityTypeID AND EntityIDValue = @EntityIDValue AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY20030 WHERE TemplateID = @TemplateID AND EntityTypeID = @EntityTypeID AND EntityIDValue = @EntityIDValue SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY20030SD] TO [DYNGRP]
GO
