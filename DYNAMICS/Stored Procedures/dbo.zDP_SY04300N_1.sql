SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SY04300N_1] (@BS int, @TRKDARPTS tinyint, @TRKDARPTS_RS tinyint, @TRKDARPTS_RE tinyint) AS /* 14.00.0084.000 */ set nocount on IF @TRKDARPTS_RS IS NULL BEGIN SELECT TOP 25  TRKLGOUT, TRKROUT, TRKPSTLOG_1, TRKPSTLOG_2, TRKPSTLOG_3, TRKPSTLOG_4, TRKPSTLOG_5, TRKPSTLOG_6, TRKDAFLS, TRKDAFRM, TRKDARPTS, TRKFLOG, TRKFADDS, TRKFDEL, TRKMODAC, TRKRWACS, TRKSETAD, TRKSETDL, TRKSETMD, TRKTRXAD, TRKTRXDL, TRKTRXMD, TRKFLMOD, TRMFMANT, TRKATFRMS, TRKAREPT, TrackSuccessfulSPAccess, TrackDeniedSPAccess, TRKSLOG, TRKUTLS, DEX_ROW_ID FROM .SY04300 WHERE ( TRKDARPTS > @TRKDARPTS ) ORDER BY TRKDARPTS ASC END ELSE IF @TRKDARPTS_RS = @TRKDARPTS_RE BEGIN SELECT TOP 25  TRKLGOUT, TRKROUT, TRKPSTLOG_1, TRKPSTLOG_2, TRKPSTLOG_3, TRKPSTLOG_4, TRKPSTLOG_5, TRKPSTLOG_6, TRKDAFLS, TRKDAFRM, TRKDARPTS, TRKFLOG, TRKFADDS, TRKFDEL, TRKMODAC, TRKRWACS, TRKSETAD, TRKSETDL, TRKSETMD, TRKTRXAD, TRKTRXDL, TRKTRXMD, TRKFLMOD, TRMFMANT, TRKATFRMS, TRKAREPT, TrackSuccessfulSPAccess, TrackDeniedSPAccess, TRKSLOG, TRKUTLS, DEX_ROW_ID FROM .SY04300 WHERE TRKDARPTS = @TRKDARPTS_RS AND ( TRKDARPTS > @TRKDARPTS ) ORDER BY TRKDARPTS ASC END ELSE BEGIN SELECT TOP 25  TRKLGOUT, TRKROUT, TRKPSTLOG_1, TRKPSTLOG_2, TRKPSTLOG_3, TRKPSTLOG_4, TRKPSTLOG_5, TRKPSTLOG_6, TRKDAFLS, TRKDAFRM, TRKDARPTS, TRKFLOG, TRKFADDS, TRKFDEL, TRKMODAC, TRKRWACS, TRKSETAD, TRKSETDL, TRKSETMD, TRKTRXAD, TRKTRXDL, TRKTRXMD, TRKFLMOD, TRMFMANT, TRKATFRMS, TRKAREPT, TrackSuccessfulSPAccess, TrackDeniedSPAccess, TRKSLOG, TRKUTLS, DEX_ROW_ID FROM .SY04300 WHERE TRKDARPTS BETWEEN @TRKDARPTS_RS AND @TRKDARPTS_RE AND ( TRKDARPTS > @TRKDARPTS ) ORDER BY TRKDARPTS ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04300N_1] TO [DYNGRP]
GO
