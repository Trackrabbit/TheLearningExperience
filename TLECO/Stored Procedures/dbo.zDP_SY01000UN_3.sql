SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY01000UN_3] (@BS int, @SERIES smallint, @SEQNUMBR int, @SERIES_RS smallint, @SEQNUMBR_RS int, @SERIES_RE smallint, @SEQNUMBR_RE int) AS  set nocount on IF @SERIES_RS IS NULL BEGIN SELECT TOP 25  REPRNTNT, SERIES, SEQNUMBR, TRXSOURC, TRXSRCPX, NTRXSNUM, SOURCDOC, DEX_ROW_ID FROM .SY01000 WHERE ( SERIES = @SERIES AND SEQNUMBR > @SEQNUMBR OR SERIES > @SERIES ) ORDER BY SERIES ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE IF @SERIES_RS = @SERIES_RE BEGIN SELECT TOP 25  REPRNTNT, SERIES, SEQNUMBR, TRXSOURC, TRXSRCPX, NTRXSNUM, SOURCDOC, DEX_ROW_ID FROM .SY01000 WHERE SERIES = @SERIES_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( SERIES = @SERIES AND SEQNUMBR > @SEQNUMBR OR SERIES > @SERIES ) ORDER BY SERIES ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  REPRNTNT, SERIES, SEQNUMBR, TRXSOURC, TRXSRCPX, NTRXSNUM, SOURCDOC, DEX_ROW_ID FROM .SY01000 WHERE SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( SERIES = @SERIES AND SEQNUMBR > @SEQNUMBR OR SERIES > @SERIES ) ORDER BY SERIES ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01000UN_3] TO [DYNGRP]
GO
