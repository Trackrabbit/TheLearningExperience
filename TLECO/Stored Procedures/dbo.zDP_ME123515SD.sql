SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123515SD] (@Output_Format char(21), @ME_Line_Position smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .ME123515 WHERE Output_Format = @Output_Format AND ME_Line_Position = @ME_Line_Position AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ME123515 WHERE Output_Format = @Output_Format AND ME_Line_Position = @ME_Line_Position SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123515SD] TO [DYNGRP]
GO
