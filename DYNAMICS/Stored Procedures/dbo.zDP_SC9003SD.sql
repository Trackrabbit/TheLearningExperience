SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9003SD] (@PRODID smallint, @Series_Number smallint, @FORMNAME char(79), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .SC9003 WHERE PRODID = @PRODID AND Series_Number = @Series_Number AND FORMNAME = @FORMNAME AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SC9003 WHERE PRODID = @PRODID AND Series_Number = @Series_Number AND FORMNAME = @FORMNAME SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9003SD] TO [DYNGRP]
GO
