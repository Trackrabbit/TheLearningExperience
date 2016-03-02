SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA01000L_1] (@SERIES_RS smallint, @TRXSRCPX_RS char(5), @SERIES_RE smallint, @TRXSRCPX_RE char(5)) AS  set nocount on IF @SERIES_RS IS NULL BEGIN SELECT TOP 25  REPRNTNT, SERIES, SEQNUMBR, TRXSOURC, TRXSRCPX, NTRXSNUM, SOURCDOC, DEX_ROW_ID FROM .FA01000 ORDER BY SERIES DESC, TRXSRCPX DESC END ELSE IF @SERIES_RS = @SERIES_RE BEGIN SELECT TOP 25  REPRNTNT, SERIES, SEQNUMBR, TRXSOURC, TRXSRCPX, NTRXSNUM, SOURCDOC, DEX_ROW_ID FROM .FA01000 WHERE SERIES = @SERIES_RS AND TRXSRCPX BETWEEN @TRXSRCPX_RS AND @TRXSRCPX_RE ORDER BY SERIES DESC, TRXSRCPX DESC END ELSE BEGIN SELECT TOP 25  REPRNTNT, SERIES, SEQNUMBR, TRXSOURC, TRXSRCPX, NTRXSNUM, SOURCDOC, DEX_ROW_ID FROM .FA01000 WHERE SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND TRXSRCPX BETWEEN @TRXSRCPX_RS AND @TRXSRCPX_RE ORDER BY SERIES DESC, TRXSRCPX DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA01000L_1] TO [DYNGRP]
GO