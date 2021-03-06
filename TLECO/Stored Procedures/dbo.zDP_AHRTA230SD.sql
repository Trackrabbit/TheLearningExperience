SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHRTA230SD] (@EMPID_I char(15), @TIMECODE_I char(7), @YEAR1 smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .AHRTA230 WHERE EMPID_I = @EMPID_I AND TIMECODE_I = @TIMECODE_I AND YEAR1 = @YEAR1 AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .AHRTA230 WHERE EMPID_I = @EMPID_I AND TIMECODE_I = @TIMECODE_I AND YEAR1 = @YEAR1 SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHRTA230SD] TO [DYNGRP]
GO
