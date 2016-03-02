SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY70400F_1] (@RPTGRIND_RS smallint, @RTPACHIN_RS smallint, @RTGRSBIN_RS numeric(19,5), @RPTGRIND_RE smallint, @RTPACHIN_RE smallint, @RTGRSBIN_RE numeric(19,5)) AS  set nocount on IF @RPTGRIND_RS IS NULL BEGIN SELECT TOP 25  RPTGRIND, RPTGRNMS, RTGRSBIN, RTPACHIN, DEX_ROW_ID FROM .SY70400 ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTGRSBIN ASC END ELSE IF @RPTGRIND_RS = @RPTGRIND_RE BEGIN SELECT TOP 25  RPTGRIND, RPTGRNMS, RTGRSBIN, RTPACHIN, DEX_ROW_ID FROM .SY70400 WHERE RPTGRIND = @RPTGRIND_RS AND RTPACHIN BETWEEN @RTPACHIN_RS AND @RTPACHIN_RE AND RTGRSBIN BETWEEN @RTGRSBIN_RS AND @RTGRSBIN_RE ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTGRSBIN ASC END ELSE BEGIN SELECT TOP 25  RPTGRIND, RPTGRNMS, RTGRSBIN, RTPACHIN, DEX_ROW_ID FROM .SY70400 WHERE RPTGRIND BETWEEN @RPTGRIND_RS AND @RPTGRIND_RE AND RTPACHIN BETWEEN @RTPACHIN_RS AND @RTPACHIN_RE AND RTGRSBIN BETWEEN @RTGRSBIN_RS AND @RTGRSBIN_RE ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTGRSBIN ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY70400F_1] TO [DYNGRP]
GO
