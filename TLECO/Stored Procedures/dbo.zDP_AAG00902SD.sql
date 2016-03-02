SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00902SD] (@aaBudgetTreeID int, @aaTrxDimCodeID int, @aaTrxDimParCodeID int, @aaCodeSequence int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .AAG00902 WHERE aaBudgetTreeID = @aaBudgetTreeID AND aaTrxDimCodeID = @aaTrxDimCodeID AND aaTrxDimParCodeID = @aaTrxDimParCodeID AND aaCodeSequence = @aaCodeSequence AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .AAG00902 WHERE aaBudgetTreeID = @aaBudgetTreeID AND aaTrxDimCodeID = @aaTrxDimCodeID AND aaTrxDimParCodeID = @aaTrxDimParCodeID AND aaCodeSequence = @aaCodeSequence SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00902SD] TO [DYNGRP]
GO
