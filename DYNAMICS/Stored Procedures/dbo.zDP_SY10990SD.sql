SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10990SD] (@Language_ID smallint, @Deployed_Object_Name char(101), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY10990 WHERE Language_ID = @Language_ID AND Deployed_Object_Name = @Deployed_Object_Name AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY10990 WHERE Language_ID = @Language_ID AND Deployed_Object_Name = @Deployed_Object_Name SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10990SD] TO [DYNGRP]
GO
