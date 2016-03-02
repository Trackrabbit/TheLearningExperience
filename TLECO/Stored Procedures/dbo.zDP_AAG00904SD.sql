SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00904SD] (@aaBudgetID int, @aaCodeSequence int, @PERIODDT datetime, @aaFiscalPeriod smallint, @aaActualPriliminary int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .AAG00904 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence AND PERIODDT = @PERIODDT AND aaFiscalPeriod = @aaFiscalPeriod AND aaActualPriliminary = @aaActualPriliminary AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .AAG00904 WHERE aaBudgetID = @aaBudgetID AND aaCodeSequence = @aaCodeSequence AND PERIODDT = @PERIODDT AND aaFiscalPeriod = @aaFiscalPeriod AND aaActualPriliminary = @aaActualPriliminary SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00904SD] TO [DYNGRP]
GO
