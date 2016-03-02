SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRPS0401SD] (@PYSTPTBLID char(15), @Effective_Date datetime, @Step smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .HRPS0401 WHERE PYSTPTBLID = @PYSTPTBLID AND Effective_Date = @Effective_Date AND Step = @Step AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .HRPS0401 WHERE PYSTPTBLID = @PYSTPTBLID AND Effective_Date = @Effective_Date AND Step = @Step SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPS0401SD] TO [DYNGRP]
GO
