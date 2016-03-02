SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY08100L_1] (@USERID_RS char(15), @SectionID_RS smallint, @MetricSequence_RS int, @USERID_RE char(15), @SectionID_RE smallint, @MetricSequence_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, SectionID, DICTID, COLNUMBR, SEQNUMBR, Visible, MetricSequence, Selected, Mode, DEX_ROW_ID FROM .SY08100 ORDER BY USERID DESC, SectionID DESC, MetricSequence DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, SectionID, DICTID, COLNUMBR, SEQNUMBR, Visible, MetricSequence, Selected, Mode, DEX_ROW_ID FROM .SY08100 WHERE USERID = @USERID_RS AND SectionID BETWEEN @SectionID_RS AND @SectionID_RE AND MetricSequence BETWEEN @MetricSequence_RS AND @MetricSequence_RE ORDER BY USERID DESC, SectionID DESC, MetricSequence DESC END ELSE BEGIN SELECT TOP 25  USERID, SectionID, DICTID, COLNUMBR, SEQNUMBR, Visible, MetricSequence, Selected, Mode, DEX_ROW_ID FROM .SY08100 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND SectionID BETWEEN @SectionID_RS AND @SectionID_RE AND MetricSequence BETWEEN @MetricSequence_RS AND @MetricSequence_RE ORDER BY USERID DESC, SectionID DESC, MetricSequence DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY08100L_1] TO [DYNGRP]
GO
