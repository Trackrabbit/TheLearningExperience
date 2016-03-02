SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC40301SD] (@RATETPID char(15), @CURNCYID char(15), @EXGTBLID char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .MC40301 WHERE RATETPID = @RATETPID AND CURNCYID = @CURNCYID AND EXGTBLID = @EXGTBLID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .MC40301 WHERE RATETPID = @RATETPID AND CURNCYID = @CURNCYID AND EXGTBLID = @EXGTBLID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC40301SD] TO [DYNGRP]
GO