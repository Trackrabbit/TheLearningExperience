SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA01000UN_2] (@BS int, @SOURCDOC char(11), @TRXSOURC char(25), @SOURCDOC_RS char(11), @TRXSOURC_RS char(25), @SOURCDOC_RE char(11), @TRXSOURC_RE char(25)) AS  set nocount on IF @SOURCDOC_RS IS NULL BEGIN SELECT TOP 25  REPRNTNT, SERIES, SEQNUMBR, TRXSOURC, TRXSRCPX, NTRXSNUM, SOURCDOC, DEX_ROW_ID FROM .FA01000 WHERE ( SOURCDOC = @SOURCDOC AND TRXSOURC > @TRXSOURC OR SOURCDOC > @SOURCDOC ) ORDER BY SOURCDOC ASC, TRXSOURC ASC, DEX_ROW_ID ASC END ELSE IF @SOURCDOC_RS = @SOURCDOC_RE BEGIN SELECT TOP 25  REPRNTNT, SERIES, SEQNUMBR, TRXSOURC, TRXSRCPX, NTRXSNUM, SOURCDOC, DEX_ROW_ID FROM .FA01000 WHERE SOURCDOC = @SOURCDOC_RS AND TRXSOURC BETWEEN @TRXSOURC_RS AND @TRXSOURC_RE AND ( SOURCDOC = @SOURCDOC AND TRXSOURC > @TRXSOURC OR SOURCDOC > @SOURCDOC ) ORDER BY SOURCDOC ASC, TRXSOURC ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  REPRNTNT, SERIES, SEQNUMBR, TRXSOURC, TRXSRCPX, NTRXSNUM, SOURCDOC, DEX_ROW_ID FROM .FA01000 WHERE SOURCDOC BETWEEN @SOURCDOC_RS AND @SOURCDOC_RE AND TRXSOURC BETWEEN @TRXSOURC_RS AND @TRXSOURC_RE AND ( SOURCDOC = @SOURCDOC AND TRXSOURC > @TRXSOURC OR SOURCDOC > @SOURCDOC ) ORDER BY SOURCDOC ASC, TRXSOURC ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA01000UN_2] TO [DYNGRP]
GO
