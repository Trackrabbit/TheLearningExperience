SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AUD20130SD] (@MYSTERYFORMKEY_I smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .AUD20130 WHERE MYSTERYFORMKEY_I = @MYSTERYFORMKEY_I AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .AUD20130 WHERE MYSTERYFORMKEY_I = @MYSTERYFORMKEY_I SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AUD20130SD] TO [DYNGRP]
GO
