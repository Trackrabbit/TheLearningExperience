SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL70501SD] (@USERID char(15), @RPTGRIND smallint, @RTPACHIN smallint, @RTGRSBIN numeric(19,5), @SEQNUMBR int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .GL70501 WHERE USERID = @USERID AND RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN = @RTGRSBIN AND SEQNUMBR = @SEQNUMBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .GL70501 WHERE USERID = @USERID AND RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN = @RTGRSBIN AND SEQNUMBR = @SEQNUMBR SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL70501SD] TO [DYNGRP]
GO
