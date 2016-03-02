SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CPO10110SD] (@PONUMBER char(17), @ORD int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .CPO10110 WHERE PONUMBER = @PONUMBER AND ORD = @ORD AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .CPO10110 WHERE PONUMBER = @PONUMBER AND ORD = @ORD SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CPO10110SD] TO [DYNGRP]
GO
