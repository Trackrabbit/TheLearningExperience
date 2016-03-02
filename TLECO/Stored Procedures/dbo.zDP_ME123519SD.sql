SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123519SD] (@Output_Format char(21), @ME_Transaction_Type smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .ME123519 WHERE Output_Format = @Output_Format AND ME_Transaction_Type = @ME_Transaction_Type AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ME123519 WHERE Output_Format = @Output_Format AND ME_Transaction_Type = @ME_Transaction_Type SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123519SD] TO [DYNGRP]
GO
