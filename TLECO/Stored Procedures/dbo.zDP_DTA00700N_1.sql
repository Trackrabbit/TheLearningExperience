SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_DTA00700N_1] (@BS int, @RPTGRIND smallint, @RTPACHIN smallint, @RTGRSBIN numeric(19,5), @RPTGRIND_RS smallint, @RTPACHIN_RS smallint, @RTGRSBIN_RS numeric(19,5), @RPTGRIND_RE smallint, @RTPACHIN_RE smallint, @RTGRSBIN_RE numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on IF @RPTGRIND_RS IS NULL BEGIN SELECT TOP 25  RPTGRIND, RTGRSBIN, RTPACHIN, STTACNUM_1, STTACNUM_2, STTACNUM_3, STTACNUM_4, EACCNBR_1, EACCNBR_2, EACCNBR_3, EACCNBR_4, STRTDATE, ENDDATE, STARTGRP, ENDGROUP, STRTCODE, ENDCODE, PRNTDTLD, UNPSTTRX, OPEN1, HISTORY, STTPSTDT, ENDPSTDT, DEX_ROW_ID FROM .DTA00700 WHERE ( RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN > @RTGRSBIN OR RPTGRIND = @RPTGRIND AND RTPACHIN > @RTPACHIN OR RPTGRIND > @RPTGRIND ) ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTGRSBIN ASC END ELSE IF @RPTGRIND_RS = @RPTGRIND_RE BEGIN SELECT TOP 25  RPTGRIND, RTGRSBIN, RTPACHIN, STTACNUM_1, STTACNUM_2, STTACNUM_3, STTACNUM_4, EACCNBR_1, EACCNBR_2, EACCNBR_3, EACCNBR_4, STRTDATE, ENDDATE, STARTGRP, ENDGROUP, STRTCODE, ENDCODE, PRNTDTLD, UNPSTTRX, OPEN1, HISTORY, STTPSTDT, ENDPSTDT, DEX_ROW_ID FROM .DTA00700 WHERE RPTGRIND = @RPTGRIND_RS AND RTPACHIN BETWEEN @RTPACHIN_RS AND @RTPACHIN_RE AND RTGRSBIN BETWEEN @RTGRSBIN_RS AND @RTGRSBIN_RE AND ( RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN > @RTGRSBIN OR RPTGRIND = @RPTGRIND AND RTPACHIN > @RTPACHIN OR RPTGRIND > @RPTGRIND ) ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTGRSBIN ASC END ELSE BEGIN SELECT TOP 25  RPTGRIND, RTGRSBIN, RTPACHIN, STTACNUM_1, STTACNUM_2, STTACNUM_3, STTACNUM_4, EACCNBR_1, EACCNBR_2, EACCNBR_3, EACCNBR_4, STRTDATE, ENDDATE, STARTGRP, ENDGROUP, STRTCODE, ENDCODE, PRNTDTLD, UNPSTTRX, OPEN1, HISTORY, STTPSTDT, ENDPSTDT, DEX_ROW_ID FROM .DTA00700 WHERE RPTGRIND BETWEEN @RPTGRIND_RS AND @RPTGRIND_RE AND RTPACHIN BETWEEN @RTPACHIN_RS AND @RTPACHIN_RE AND RTGRSBIN BETWEEN @RTGRSBIN_RS AND @RTGRSBIN_RE AND ( RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN > @RTGRSBIN OR RPTGRIND = @RPTGRIND AND RTPACHIN > @RTPACHIN OR RPTGRIND > @RPTGRIND ) ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTGRSBIN ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_DTA00700N_1] TO [DYNGRP]
GO