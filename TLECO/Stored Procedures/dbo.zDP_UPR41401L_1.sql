SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41401L_1] (@LOCALTAX_RS char(7), @TXTBLSEQ_RS smallint, @LOCALTAX_RE char(7), @TXTBLSEQ_RE smallint) AS  set nocount on IF @LOCALTAX_RS IS NULL BEGIN SELECT TOP 25  LOCALTAX, TXTBLSEQ, TXBRULMT, TXBRKTAM, RXBRKTRT, TXBREXWG, DEX_ROW_ID FROM .UPR41401 ORDER BY LOCALTAX DESC, TXTBLSEQ DESC END ELSE IF @LOCALTAX_RS = @LOCALTAX_RE BEGIN SELECT TOP 25  LOCALTAX, TXTBLSEQ, TXBRULMT, TXBRKTAM, RXBRKTRT, TXBREXWG, DEX_ROW_ID FROM .UPR41401 WHERE LOCALTAX = @LOCALTAX_RS AND TXTBLSEQ BETWEEN @TXTBLSEQ_RS AND @TXTBLSEQ_RE ORDER BY LOCALTAX DESC, TXTBLSEQ DESC END ELSE BEGIN SELECT TOP 25  LOCALTAX, TXTBLSEQ, TXBRULMT, TXBRKTAM, RXBRKTRT, TXBREXWG, DEX_ROW_ID FROM .UPR41401 WHERE LOCALTAX BETWEEN @LOCALTAX_RS AND @LOCALTAX_RE AND TXTBLSEQ BETWEEN @TXTBLSEQ_RS AND @TXTBLSEQ_RE ORDER BY LOCALTAX DESC, TXTBLSEQ DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41401L_1] TO [DYNGRP]
GO