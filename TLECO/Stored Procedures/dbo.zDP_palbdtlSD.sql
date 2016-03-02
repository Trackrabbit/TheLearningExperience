SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbdtlSD] (@LockboxID char(15), @paRowType smallint, @paFieldNumber smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .palbdtl WHERE LockboxID = @LockboxID AND paRowType = @paRowType AND paFieldNumber = @paFieldNumber AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .palbdtl WHERE LockboxID = @LockboxID AND paRowType = @paRowType AND paFieldNumber = @paFieldNumber SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_palbdtlSD] TO [DYNGRP]
GO
