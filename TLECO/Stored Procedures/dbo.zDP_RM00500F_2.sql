SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00500F_2] (@PRODTCOD_RS char(1), @LINKCODE_RS char(15), @SEQNUMBR_RS int, @PRODTCOD_RE char(1), @LINKCODE_RE char(15), @SEQNUMBR_RE int) AS  set nocount on IF @PRODTCOD_RS IS NULL BEGIN SELECT TOP 25  PRCSHID, PRODTCOD, LINKCODE, SEQNUMBR, PSSEQNUM, DEX_ROW_ID FROM .RM00500 ORDER BY PRODTCOD ASC, LINKCODE ASC, SEQNUMBR ASC END ELSE IF @PRODTCOD_RS = @PRODTCOD_RE BEGIN SELECT TOP 25  PRCSHID, PRODTCOD, LINKCODE, SEQNUMBR, PSSEQNUM, DEX_ROW_ID FROM .RM00500 WHERE PRODTCOD = @PRODTCOD_RS AND LINKCODE BETWEEN @LINKCODE_RS AND @LINKCODE_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY PRODTCOD ASC, LINKCODE ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  PRCSHID, PRODTCOD, LINKCODE, SEQNUMBR, PSSEQNUM, DEX_ROW_ID FROM .RM00500 WHERE PRODTCOD BETWEEN @PRODTCOD_RS AND @PRODTCOD_RE AND LINKCODE BETWEEN @LINKCODE_RS AND @LINKCODE_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY PRODTCOD ASC, LINKCODE ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00500F_2] TO [DYNGRP]
GO
