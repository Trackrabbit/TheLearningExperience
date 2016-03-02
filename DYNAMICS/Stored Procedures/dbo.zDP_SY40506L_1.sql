SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40506L_1] (@BARULEID_RS int, @DATESENT_RS datetime, @TIMESENT_RS datetime, @BARULEID_RE int, @DATESENT_RE datetime, @TIMESENT_RE datetime) AS  set nocount on IF @BARULEID_RS IS NULL BEGIN SELECT TOP 25  BARULEID, DATESENT, TIMESENT, RCPIENTS, DEX_ROW_ID FROM .SY40506 ORDER BY BARULEID DESC, DATESENT DESC, TIMESENT DESC END ELSE IF @BARULEID_RS = @BARULEID_RE BEGIN SELECT TOP 25  BARULEID, DATESENT, TIMESENT, RCPIENTS, DEX_ROW_ID FROM .SY40506 WHERE BARULEID = @BARULEID_RS AND DATESENT BETWEEN @DATESENT_RS AND @DATESENT_RE AND TIMESENT BETWEEN @TIMESENT_RS AND @TIMESENT_RE ORDER BY BARULEID DESC, DATESENT DESC, TIMESENT DESC END ELSE BEGIN SELECT TOP 25  BARULEID, DATESENT, TIMESENT, RCPIENTS, DEX_ROW_ID FROM .SY40506 WHERE BARULEID BETWEEN @BARULEID_RS AND @BARULEID_RE AND DATESENT BETWEEN @DATESENT_RS AND @DATESENT_RE AND TIMESENT BETWEEN @TIMESENT_RS AND @TIMESENT_RE ORDER BY BARULEID DESC, DATESENT DESC, TIMESENT DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40506L_1] TO [DYNGRP]
GO
