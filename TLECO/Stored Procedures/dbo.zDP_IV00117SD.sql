SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00117SD] (@ITEMNMBR char(31), @LOCNCODE char(11), @Priority smallint, @BIN char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .IV00117 WHERE ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND Priority = @Priority AND BIN = @BIN AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .IV00117 WHERE ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND Priority = @Priority AND BIN = @BIN SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00117SD] TO [DYNGRP]
GO
