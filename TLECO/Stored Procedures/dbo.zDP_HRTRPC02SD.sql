SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRTRPC02SD] (@POSITIONCODE_I char(7), @COURSEID_I char(7), @ICLASSID_I char(7), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .HRTRPC02 WHERE POSITIONCODE_I = @POSITIONCODE_I AND COURSEID_I = @COURSEID_I AND ICLASSID_I = @ICLASSID_I AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .HRTRPC02 WHERE POSITIONCODE_I = @POSITIONCODE_I AND COURSEID_I = @COURSEID_I AND ICLASSID_I = @ICLASSID_I SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRTRPC02SD] TO [DYNGRP]
GO
