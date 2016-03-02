SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40100L_3] (@BSNSFDSC_RS char(31), @BSNSFMID_RS char(15), @BSNSFDSC_RE char(31), @BSNSFMID_RE char(15)) AS  set nocount on IF @BSNSFDSC_RS IS NULL BEGIN SELECT TOP 25  BSNSFMID, BSNSFDSC, OFFINDX, OVOACNUM, BCHEMSG1, BCHEMSG2, SOURCDOC, REFRENCE, BRKDNALL, NOTEINDX, DEX_ROW_ID FROM .GL40100 ORDER BY BSNSFDSC DESC, BSNSFMID DESC END ELSE IF @BSNSFDSC_RS = @BSNSFDSC_RE BEGIN SELECT TOP 25  BSNSFMID, BSNSFDSC, OFFINDX, OVOACNUM, BCHEMSG1, BCHEMSG2, SOURCDOC, REFRENCE, BRKDNALL, NOTEINDX, DEX_ROW_ID FROM .GL40100 WHERE BSNSFDSC = @BSNSFDSC_RS AND BSNSFMID BETWEEN @BSNSFMID_RS AND @BSNSFMID_RE ORDER BY BSNSFDSC DESC, BSNSFMID DESC END ELSE BEGIN SELECT TOP 25  BSNSFMID, BSNSFDSC, OFFINDX, OVOACNUM, BCHEMSG1, BCHEMSG2, SOURCDOC, REFRENCE, BRKDNALL, NOTEINDX, DEX_ROW_ID FROM .GL40100 WHERE BSNSFDSC BETWEEN @BSNSFDSC_RS AND @BSNSFDSC_RE AND BSNSFMID BETWEEN @BSNSFMID_RS AND @BSNSFMID_RE ORDER BY BSNSFDSC DESC, BSNSFMID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40100L_3] TO [DYNGRP]
GO
