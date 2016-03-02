SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT00900SD] (@Extender_Lookup_ID char(15), @STR30 char(31), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .EXT00900 WHERE Extender_Lookup_ID = @Extender_Lookup_ID AND STR30 = @STR30 AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .EXT00900 WHERE Extender_Lookup_ID = @Extender_Lookup_ID AND STR30 = @STR30 SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT00900SD] TO [DYNGRP]
GO
