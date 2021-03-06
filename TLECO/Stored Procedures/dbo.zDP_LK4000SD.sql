SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_LK4000SD] (@RPTGRIND smallint, @RTPACHIN smallint, @RTGRSBIN numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .LK4000 WHERE RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN = @RTGRSBIN AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .LK4000 WHERE RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN = @RTGRSBIN SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_LK4000SD] TO [DYNGRP]
GO
