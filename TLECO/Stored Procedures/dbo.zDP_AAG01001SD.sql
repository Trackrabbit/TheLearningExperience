SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG01001SD] (@aaTrxDimID int, @aaUDFID int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .AAG01001 WHERE aaTrxDimID = @aaTrxDimID AND aaUDFID = @aaUDFID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .AAG01001 WHERE aaTrxDimID = @aaTrxDimID AND aaUDFID = @aaUDFID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG01001SD] TO [DYNGRP]
GO
