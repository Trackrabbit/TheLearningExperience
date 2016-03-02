SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR70500SD] (@RPTGRIND smallint, @RTPACHIN smallint, @RTGRSBIN numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .HR70500 WHERE RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN = @RTGRSBIN AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .HR70500 WHERE RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN = @RTGRSBIN SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR70500SD] TO [DYNGRP]
GO
