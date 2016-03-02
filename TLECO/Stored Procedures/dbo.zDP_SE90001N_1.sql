SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SE90001N_1] (@BS int, @SEOPTNME char(21), @ACTINDX int, @SEOPTNME_RS char(21), @ACTINDX_RS int, @SEOPTNME_RE char(21), @ACTINDX_RE int) AS /* 14.00.0084.000 */ set nocount on IF @SEOPTNME_RS IS NULL BEGIN SELECT TOP 25  SEOPTNME, ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, DEX_ROW_ID FROM .SE90001 WHERE ( SEOPTNME = @SEOPTNME AND ACTINDX > @ACTINDX OR SEOPTNME > @SEOPTNME ) ORDER BY SEOPTNME ASC, ACTINDX ASC END ELSE IF @SEOPTNME_RS = @SEOPTNME_RE BEGIN SELECT TOP 25  SEOPTNME, ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, DEX_ROW_ID FROM .SE90001 WHERE SEOPTNME = @SEOPTNME_RS AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( SEOPTNME = @SEOPTNME AND ACTINDX > @ACTINDX OR SEOPTNME > @SEOPTNME ) ORDER BY SEOPTNME ASC, ACTINDX ASC END ELSE BEGIN SELECT TOP 25  SEOPTNME, ACTINDX, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, DEX_ROW_ID FROM .SE90001 WHERE SEOPTNME BETWEEN @SEOPTNME_RS AND @SEOPTNME_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( SEOPTNME = @SEOPTNME AND ACTINDX > @ACTINDX OR SEOPTNME > @SEOPTNME ) ORDER BY SEOPTNME ASC, ACTINDX ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SE90001N_1] TO [DYNGRP]
GO