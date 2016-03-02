SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CPO10111SD] (@PONUMBER char(17), @ORD int, @ACTINDX int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .CPO10111 WHERE PONUMBER = @PONUMBER AND ORD = @ORD AND ACTINDX = @ACTINDX AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .CPO10111 WHERE PONUMBER = @PONUMBER AND ORD = @ORD AND ACTINDX = @ACTINDX SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CPO10111SD] TO [DYNGRP]
GO