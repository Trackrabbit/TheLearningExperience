SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_LK40001N_1] (@BS int, @RPTGRIND smallint, @RTPACHIN smallint, @RTCFGWIN smallint, @RTGRSBIN numeric(19,5), @RPTGRIND_RS smallint, @RTPACHIN_RS smallint, @RTCFGWIN_RS smallint, @RTGRSBIN_RS numeric(19,5), @RPTGRIND_RE smallint, @RTPACHIN_RE smallint, @RTCFGWIN_RE smallint, @RTGRSBIN_RE numeric(19,5)) AS  set nocount on IF @RPTGRIND_RS IS NULL BEGIN SELECT TOP 25  RTGRSBIN, RTPACHIN, RPTGRIND, RPTGRNMS, RTCFGWIN, DEX_ROW_ID FROM .LK40001 WHERE ( RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTCFGWIN = @RTCFGWIN AND RTGRSBIN > @RTGRSBIN OR RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTCFGWIN > @RTCFGWIN OR RPTGRIND = @RPTGRIND AND RTPACHIN > @RTPACHIN OR RPTGRIND > @RPTGRIND ) ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTCFGWIN ASC, RTGRSBIN ASC END ELSE IF @RPTGRIND_RS = @RPTGRIND_RE BEGIN SELECT TOP 25  RTGRSBIN, RTPACHIN, RPTGRIND, RPTGRNMS, RTCFGWIN, DEX_ROW_ID FROM .LK40001 WHERE RPTGRIND = @RPTGRIND_RS AND RTPACHIN BETWEEN @RTPACHIN_RS AND @RTPACHIN_RE AND RTCFGWIN BETWEEN @RTCFGWIN_RS AND @RTCFGWIN_RE AND RTGRSBIN BETWEEN @RTGRSBIN_RS AND @RTGRSBIN_RE AND ( RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTCFGWIN = @RTCFGWIN AND RTGRSBIN > @RTGRSBIN OR RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTCFGWIN > @RTCFGWIN OR RPTGRIND = @RPTGRIND AND RTPACHIN > @RTPACHIN OR RPTGRIND > @RPTGRIND ) ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTCFGWIN ASC, RTGRSBIN ASC END ELSE BEGIN SELECT TOP 25  RTGRSBIN, RTPACHIN, RPTGRIND, RPTGRNMS, RTCFGWIN, DEX_ROW_ID FROM .LK40001 WHERE RPTGRIND BETWEEN @RPTGRIND_RS AND @RPTGRIND_RE AND RTPACHIN BETWEEN @RTPACHIN_RS AND @RTPACHIN_RE AND RTCFGWIN BETWEEN @RTCFGWIN_RS AND @RTCFGWIN_RE AND RTGRSBIN BETWEEN @RTGRSBIN_RS AND @RTGRSBIN_RE AND ( RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTCFGWIN = @RTCFGWIN AND RTGRSBIN > @RTGRSBIN OR RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTCFGWIN > @RTCFGWIN OR RPTGRIND = @RPTGRIND AND RTPACHIN > @RTPACHIN OR RPTGRIND > @RPTGRIND ) ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTCFGWIN ASC, RTGRSBIN ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_LK40001N_1] TO [DYNGRP]
GO
