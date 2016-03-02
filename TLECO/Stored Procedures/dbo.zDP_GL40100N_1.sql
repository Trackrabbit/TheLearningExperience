SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40100N_1] (@BS int, @BSNSFMID char(15), @BSNSFMID_RS char(15), @BSNSFMID_RE char(15)) AS  set nocount on IF @BSNSFMID_RS IS NULL BEGIN SELECT TOP 25  BSNSFMID, BSNSFDSC, OFFINDX, OVOACNUM, BCHEMSG1, BCHEMSG2, SOURCDOC, REFRENCE, BRKDNALL, NOTEINDX, DEX_ROW_ID FROM .GL40100 WHERE ( BSNSFMID > @BSNSFMID ) ORDER BY BSNSFMID ASC END ELSE IF @BSNSFMID_RS = @BSNSFMID_RE BEGIN SELECT TOP 25  BSNSFMID, BSNSFDSC, OFFINDX, OVOACNUM, BCHEMSG1, BCHEMSG2, SOURCDOC, REFRENCE, BRKDNALL, NOTEINDX, DEX_ROW_ID FROM .GL40100 WHERE BSNSFMID = @BSNSFMID_RS AND ( BSNSFMID > @BSNSFMID ) ORDER BY BSNSFMID ASC END ELSE BEGIN SELECT TOP 25  BSNSFMID, BSNSFDSC, OFFINDX, OVOACNUM, BCHEMSG1, BCHEMSG2, SOURCDOC, REFRENCE, BRKDNALL, NOTEINDX, DEX_ROW_ID FROM .GL40100 WHERE BSNSFMID BETWEEN @BSNSFMID_RS AND @BSNSFMID_RE AND ( BSNSFMID > @BSNSFMID ) ORDER BY BSNSFMID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40100N_1] TO [DYNGRP]
GO
