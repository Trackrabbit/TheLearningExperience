SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2DIS05SD] (@EMPID_I char(15), @DATEFILED_I datetime, @DSCRIPTN char(31), @POINTS_I smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .HR2DIS05 WHERE EMPID_I = @EMPID_I AND DATEFILED_I = @DATEFILED_I AND DSCRIPTN = @DSCRIPTN AND POINTS_I = @POINTS_I AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .HR2DIS05 WHERE EMPID_I = @EMPID_I AND DATEFILED_I = @DATEFILED_I AND DSCRIPTN = @DSCRIPTN AND POINTS_I = @POINTS_I SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2DIS05SD] TO [DYNGRP]
GO
