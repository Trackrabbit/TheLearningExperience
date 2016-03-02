SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00901SD] (@aaBudgetTreeID int, @aaTrxDimID int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .AAG00901 WHERE aaBudgetTreeID = @aaBudgetTreeID AND aaTrxDimID = @aaTrxDimID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .AAG00901 WHERE aaBudgetTreeID = @aaBudgetTreeID AND aaTrxDimID = @aaTrxDimID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00901SD] TO [DYNGRP]
GO
