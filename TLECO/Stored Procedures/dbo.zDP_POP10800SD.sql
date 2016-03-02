SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10800SD] (@POPRCTNM char(17), @PONUMBER char(17), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .POP10800 WHERE POPRCTNM = @POPRCTNM AND PONUMBER = @PONUMBER AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .POP10800 WHERE POPRCTNM = @POPRCTNM AND PONUMBER = @PONUMBER SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10800SD] TO [DYNGRP]
GO
