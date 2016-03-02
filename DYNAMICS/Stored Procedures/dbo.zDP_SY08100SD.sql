SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY08100SD] (@USERID char(15), @SectionID smallint, @MetricSequence int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY08100 WHERE USERID = @USERID AND SectionID = @SectionID AND MetricSequence = @MetricSequence AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY08100 WHERE USERID = @USERID AND SectionID = @SectionID AND MetricSequence = @MetricSequence SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY08100SD] TO [DYNGRP]
GO
