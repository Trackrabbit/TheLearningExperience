SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42401SD] (@Restriction_Code char(15), @Restriction_Type smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .UPR42401 WHERE Restriction_Code = @Restriction_Code AND Restriction_Type = @Restriction_Type AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .UPR42401 WHERE Restriction_Code = @Restriction_Code AND Restriction_Type = @Restriction_Type SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42401SD] TO [DYNGRP]
GO
