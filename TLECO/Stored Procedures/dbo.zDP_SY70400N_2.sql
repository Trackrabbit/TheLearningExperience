SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY70400N_2] (@BS int, @RTGRSBIN numeric(19,5), @RTGRSBIN_RS numeric(19,5), @RTGRSBIN_RE numeric(19,5)) AS  set nocount on IF @RTGRSBIN_RS IS NULL BEGIN SELECT TOP 25  RPTGRIND, RPTGRNMS, RTGRSBIN, RTPACHIN, DEX_ROW_ID FROM .SY70400 WHERE ( RTGRSBIN > @RTGRSBIN ) ORDER BY RTGRSBIN ASC END ELSE IF @RTGRSBIN_RS = @RTGRSBIN_RE BEGIN SELECT TOP 25  RPTGRIND, RPTGRNMS, RTGRSBIN, RTPACHIN, DEX_ROW_ID FROM .SY70400 WHERE RTGRSBIN = @RTGRSBIN_RS AND ( RTGRSBIN > @RTGRSBIN ) ORDER BY RTGRSBIN ASC END ELSE BEGIN SELECT TOP 25  RPTGRIND, RPTGRNMS, RTGRSBIN, RTPACHIN, DEX_ROW_ID FROM .SY70400 WHERE RTGRSBIN BETWEEN @RTGRSBIN_RS AND @RTGRSBIN_RE AND ( RTGRSBIN > @RTGRSBIN ) ORDER BY RTGRSBIN ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY70400N_2] TO [DYNGRP]
GO
