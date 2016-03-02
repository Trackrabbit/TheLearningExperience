SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY70100SD] (@RPTGRIND smallint, @RTPACHIN smallint, @RTGRSBIN numeric(19,5), @GRPSBIND smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY70100 WHERE RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN = @RTGRSBIN AND GRPSBIND = @GRPSBIND AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY70100 WHERE RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN = @RTGRSBIN AND GRPSBIND = @GRPSBIND SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY70100SD] TO [DYNGRP]
GO
