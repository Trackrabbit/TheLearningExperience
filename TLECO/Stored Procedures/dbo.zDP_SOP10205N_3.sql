SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10205N_3] (@BS int, @PRCBKID char(15), @PRODTCOD char(1), @SEQNUMBR int, @PRCBKID_RS char(15), @PRODTCOD_RS char(1), @SEQNUMBR_RS int, @PRCBKID_RE char(15), @PRODTCOD_RE char(1), @SEQNUMBR_RE int) AS  set nocount on IF @PRCBKID_RS IS NULL BEGIN SELECT TOP 25  PRCBKID, PRODTCOD, LINKCODE, SEQNUMBR, DEX_ROW_ID FROM .SOP10205 WHERE ( PRCBKID = @PRCBKID AND PRODTCOD = @PRODTCOD AND SEQNUMBR > @SEQNUMBR OR PRCBKID = @PRCBKID AND PRODTCOD > @PRODTCOD OR PRCBKID > @PRCBKID ) ORDER BY PRCBKID ASC, PRODTCOD ASC, SEQNUMBR ASC END ELSE IF @PRCBKID_RS = @PRCBKID_RE BEGIN SELECT TOP 25  PRCBKID, PRODTCOD, LINKCODE, SEQNUMBR, DEX_ROW_ID FROM .SOP10205 WHERE PRCBKID = @PRCBKID_RS AND PRODTCOD BETWEEN @PRODTCOD_RS AND @PRODTCOD_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( PRCBKID = @PRCBKID AND PRODTCOD = @PRODTCOD AND SEQNUMBR > @SEQNUMBR OR PRCBKID = @PRCBKID AND PRODTCOD > @PRODTCOD OR PRCBKID > @PRCBKID ) ORDER BY PRCBKID ASC, PRODTCOD ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  PRCBKID, PRODTCOD, LINKCODE, SEQNUMBR, DEX_ROW_ID FROM .SOP10205 WHERE PRCBKID BETWEEN @PRCBKID_RS AND @PRCBKID_RE AND PRODTCOD BETWEEN @PRODTCOD_RS AND @PRODTCOD_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( PRCBKID = @PRCBKID AND PRODTCOD = @PRODTCOD AND SEQNUMBR > @SEQNUMBR OR PRCBKID = @PRCBKID AND PRODTCOD > @PRODTCOD OR PRCBKID > @PRCBKID ) ORDER BY PRCBKID ASC, PRODTCOD ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10205N_3] TO [DYNGRP]
GO