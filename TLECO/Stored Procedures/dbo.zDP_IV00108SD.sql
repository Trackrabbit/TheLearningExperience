SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00108SD] (@ITEMNMBR char(31), @CURNCYID char(15), @PRCLEVEL char(11), @UOFM char(9), @TOQTY numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .IV00108 WHERE ITEMNMBR = @ITEMNMBR AND CURNCYID = @CURNCYID AND PRCLEVEL = @PRCLEVEL AND UOFM = @UOFM AND TOQTY = @TOQTY AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .IV00108 WHERE ITEMNMBR = @ITEMNMBR AND CURNCYID = @CURNCYID AND PRCLEVEL = @PRCLEVEL AND UOFM = @UOFM AND TOQTY = @TOQTY SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00108SD] TO [DYNGRP]
GO
