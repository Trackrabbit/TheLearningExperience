SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_EXT90106SD] (@PRODID smallint, @Series_Number smallint, @TABLTECH char(79), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .EXT90106 WHERE PRODID = @PRODID AND Series_Number = @Series_Number AND TABLTECH = @TABLTECH AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .EXT90106 WHERE PRODID = @PRODID AND Series_Number = @Series_Number AND TABLTECH = @TABLTECH SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT90106SD] TO [DYNGRP]
GO
