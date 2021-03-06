SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10995SD] (@Language_ID smallint, @Deployed_Object_Name char(101), @Deployed_XML_Type smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY10995 WHERE Language_ID = @Language_ID AND Deployed_Object_Name = @Deployed_Object_Name AND Deployed_XML_Type = @Deployed_XML_Type AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY10995 WHERE Language_ID = @Language_ID AND Deployed_Object_Name = @Deployed_Object_Name AND Deployed_XML_Type = @Deployed_XML_Type SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10995SD] TO [DYNGRP]
GO
