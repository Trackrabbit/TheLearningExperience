SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10700SD] (@POPRCTNM char(17), @RCPTLNNM int, @LCLINENUMBER int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .POP10700 WHERE POPRCTNM = @POPRCTNM AND RCPTLNNM = @RCPTLNNM AND LCLINENUMBER = @LCLINENUMBER AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .POP10700 WHERE POPRCTNM = @POPRCTNM AND RCPTLNNM = @RCPTLNNM AND LCLINENUMBER = @LCLINENUMBER SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10700SD] TO [DYNGRP]
GO
