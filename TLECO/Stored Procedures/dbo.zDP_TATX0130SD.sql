SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TATX0130SD] (@TRXSORCE char(13), @TRX_I int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .TATX0130 WHERE TRXSORCE = @TRXSORCE AND TRX_I = @TRX_I AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .TATX0130 WHERE TRXSORCE = @TRXSORCE AND TRX_I = @TRX_I SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TATX0130SD] TO [DYNGRP]
GO