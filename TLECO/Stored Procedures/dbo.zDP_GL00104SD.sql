SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL00104SD] (@ACTINDX int, @DSTINDX int, @BDNINDX int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .GL00104 WHERE ACTINDX = @ACTINDX AND DSTINDX = @DSTINDX AND BDNINDX = @BDNINDX AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .GL00104 WHERE ACTINDX = @ACTINDX AND DSTINDX = @DSTINDX AND BDNINDX = @BDNINDX SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00104SD] TO [DYNGRP]
GO