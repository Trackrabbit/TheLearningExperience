SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY70400L_2] (@RTGRSBIN_RS numeric(19,5), @RTGRSBIN_RE numeric(19,5)) AS  set nocount on IF @RTGRSBIN_RS IS NULL BEGIN SELECT TOP 25  RPTGRIND, RPTGRNMS, RTGRSBIN, RTPACHIN, DEX_ROW_ID FROM .SY70400 ORDER BY RTGRSBIN DESC END ELSE IF @RTGRSBIN_RS = @RTGRSBIN_RE BEGIN SELECT TOP 25  RPTGRIND, RPTGRNMS, RTGRSBIN, RTPACHIN, DEX_ROW_ID FROM .SY70400 WHERE RTGRSBIN = @RTGRSBIN_RS ORDER BY RTGRSBIN DESC END ELSE BEGIN SELECT TOP 25  RPTGRIND, RPTGRNMS, RTGRSBIN, RTPACHIN, DEX_ROW_ID FROM .SY70400 WHERE RTGRSBIN BETWEEN @RTGRSBIN_RS AND @RTGRSBIN_RE ORDER BY RTGRSBIN DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY70400L_2] TO [DYNGRP]
GO