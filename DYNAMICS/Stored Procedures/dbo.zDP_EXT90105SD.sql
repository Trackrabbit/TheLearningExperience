SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_EXT90105SD] (@PRODID smallint, @Series_Number smallint, @RPRTNAME char(31), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .EXT90105 WHERE PRODID = @PRODID AND Series_Number = @Series_Number AND RPRTNAME = @RPRTNAME AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .EXT90105 WHERE PRODID = @PRODID AND Series_Number = @Series_Number AND RPRTNAME = @RPRTNAME SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT90105SD] TO [DYNGRP]
GO
