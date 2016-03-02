SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC00200SD] (@ACTINDX int, @CURNCYID char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .MC00200 WHERE ACTINDX = @ACTINDX AND CURNCYID = @CURNCYID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .MC00200 WHERE ACTINDX = @ACTINDX AND CURNCYID = @CURNCYID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC00200SD] TO [DYNGRP]
GO
