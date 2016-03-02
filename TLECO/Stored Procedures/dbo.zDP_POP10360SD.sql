SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10360SD] (@POPRCTNM char(17), @RCPTLNNM int, @TAXDTLID char(15), @ACTINDX int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .POP10360 WHERE POPRCTNM = @POPRCTNM AND RCPTLNNM = @RCPTLNNM AND TAXDTLID = @TAXDTLID AND ACTINDX = @ACTINDX AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .POP10360 WHERE POPRCTNM = @POPRCTNM AND RCPTLNNM = @RCPTLNNM AND TAXDTLID = @TAXDTLID AND ACTINDX = @ACTINDX SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10360SD] TO [DYNGRP]
GO
