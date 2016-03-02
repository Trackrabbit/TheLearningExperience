SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510010SD] (@MJW_Offering_ID char(21), @MJW_Log_User char(15), @MJW_Log_Date datetime, @MJW_Log_Time datetime, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B0510010 WHERE MJW_Offering_ID = @MJW_Offering_ID AND MJW_Log_User = @MJW_Log_User AND MJW_Log_Date = @MJW_Log_Date AND MJW_Log_Time = @MJW_Log_Time AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B0510010 WHERE MJW_Offering_ID = @MJW_Offering_ID AND MJW_Log_User = @MJW_Log_User AND MJW_Log_Date = @MJW_Log_Date AND MJW_Log_Time = @MJW_Log_Time SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510010SD] TO [DYNGRP]
GO
