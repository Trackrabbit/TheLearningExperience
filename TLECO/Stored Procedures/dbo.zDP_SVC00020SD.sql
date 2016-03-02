SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00020SD] (@UserID char(31), @period_id smallint, @fiscal_year smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC00020 WHERE UserID = @UserID AND period_id = @period_id AND fiscal_year = @fiscal_year AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC00020 WHERE UserID = @UserID AND period_id = @period_id AND fiscal_year = @fiscal_year SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00020SD] TO [DYNGRP]
GO
