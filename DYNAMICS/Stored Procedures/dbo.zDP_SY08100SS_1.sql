SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY08100SS_1] (@USERID char(15), @SectionID smallint, @MetricSequence int) AS  set nocount on SELECT TOP 1  USERID, SectionID, DICTID, COLNUMBR, SEQNUMBR, Visible, MetricSequence, Selected, Mode, DEX_ROW_ID FROM .SY08100 WHERE USERID = @USERID AND SectionID = @SectionID AND MetricSequence = @MetricSequence ORDER BY USERID ASC, SectionID ASC, MetricSequence ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY08100SS_1] TO [DYNGRP]
GO
