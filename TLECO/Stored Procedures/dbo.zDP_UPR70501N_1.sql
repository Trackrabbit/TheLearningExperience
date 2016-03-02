SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR70501N_1] (@BS int, @RPTGRIND smallint, @RTPACHIN smallint, @RTGRSBIN numeric(19,5), @CMPANYID smallint, @RPTGRIND_RS smallint, @RTPACHIN_RS smallint, @RTGRSBIN_RS numeric(19,5), @CMPANYID_RS smallint, @RPTGRIND_RE smallint, @RTPACHIN_RE smallint, @RTGRSBIN_RE numeric(19,5), @CMPANYID_RE smallint) AS  set nocount on IF @RPTGRIND_RS IS NULL BEGIN SELECT TOP 25  RPTGRIND, RTPACHIN, RTGRSBIN, CMPANYID, DEX_ROW_ID FROM .UPR70501 WHERE ( RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN = @RTGRSBIN AND CMPANYID > @CMPANYID OR RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN > @RTGRSBIN OR RPTGRIND = @RPTGRIND AND RTPACHIN > @RTPACHIN OR RPTGRIND > @RPTGRIND ) ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTGRSBIN ASC, CMPANYID ASC END ELSE IF @RPTGRIND_RS = @RPTGRIND_RE BEGIN SELECT TOP 25  RPTGRIND, RTPACHIN, RTGRSBIN, CMPANYID, DEX_ROW_ID FROM .UPR70501 WHERE RPTGRIND = @RPTGRIND_RS AND RTPACHIN BETWEEN @RTPACHIN_RS AND @RTPACHIN_RE AND RTGRSBIN BETWEEN @RTGRSBIN_RS AND @RTGRSBIN_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND ( RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN = @RTGRSBIN AND CMPANYID > @CMPANYID OR RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN > @RTGRSBIN OR RPTGRIND = @RPTGRIND AND RTPACHIN > @RTPACHIN OR RPTGRIND > @RPTGRIND ) ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTGRSBIN ASC, CMPANYID ASC END ELSE BEGIN SELECT TOP 25  RPTGRIND, RTPACHIN, RTGRSBIN, CMPANYID, DEX_ROW_ID FROM .UPR70501 WHERE RPTGRIND BETWEEN @RPTGRIND_RS AND @RPTGRIND_RE AND RTPACHIN BETWEEN @RTPACHIN_RS AND @RTPACHIN_RE AND RTGRSBIN BETWEEN @RTGRSBIN_RS AND @RTGRSBIN_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND ( RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN = @RTGRSBIN AND CMPANYID > @CMPANYID OR RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN > @RTGRSBIN OR RPTGRIND = @RPTGRIND AND RTPACHIN > @RTPACHIN OR RPTGRIND > @RPTGRIND ) ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTGRSBIN ASC, CMPANYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR70501N_1] TO [DYNGRP]
GO