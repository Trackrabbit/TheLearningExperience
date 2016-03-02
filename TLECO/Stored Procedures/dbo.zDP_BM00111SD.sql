SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM00111SD] (@ITEMNMBR char(31), @Bill_Status smallint, @Status_Ord int, @ORD int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .BM00111 WHERE ITEMNMBR = @ITEMNMBR AND Bill_Status = @Bill_Status AND Status_Ord = @Status_Ord AND ORD = @ORD AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .BM00111 WHERE ITEMNMBR = @ITEMNMBR AND Bill_Status = @Bill_Status AND Status_Ord = @Status_Ord AND ORD = @ORD SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM00111SD] TO [DYNGRP]
GO
