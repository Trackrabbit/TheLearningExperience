SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10112SD] (@SOPNUMBE char(21), @SOPTYPE smallint, @ORD int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SOP10112 WHERE SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND ORD = @ORD AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SOP10112 WHERE SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND ORD = @ORD SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10112SD] TO [DYNGRP]
GO
