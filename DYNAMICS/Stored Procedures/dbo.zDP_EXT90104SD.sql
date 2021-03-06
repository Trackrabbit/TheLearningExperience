SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_EXT90104SD] (@PRODID smallint, @FORMNAME char(79), @WINNAME char(79), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .EXT90104 WHERE PRODID = @PRODID AND FORMNAME = @FORMNAME AND WINNAME = @WINNAME AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .EXT90104 WHERE PRODID = @PRODID AND FORMNAME = @FORMNAME AND WINNAME = @WINNAME SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT90104SD] TO [DYNGRP]
GO
