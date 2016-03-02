SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00401F_4] (@DOCDATE_RS datetime, @RMDTYPAL_RS smallint, @DOCNUMBR_RS char(21), @DOCDATE_RE datetime, @RMDTYPAL_RE smallint, @DOCNUMBR_RE char(21)) AS  set nocount on IF @DOCDATE_RS IS NULL BEGIN SELECT TOP 25  DOCNUMBR, RMDTYPAL, DCSTATUS, BCHSOURC, TRXSORCE, CUSTNMBR, CHEKNMBR, DOCDATE, NEGQTYSOPINV, DEX_ROW_ID FROM .RM00401 ORDER BY DOCDATE ASC, RMDTYPAL ASC, DOCNUMBR ASC END ELSE IF @DOCDATE_RS = @DOCDATE_RE BEGIN SELECT TOP 25  DOCNUMBR, RMDTYPAL, DCSTATUS, BCHSOURC, TRXSORCE, CUSTNMBR, CHEKNMBR, DOCDATE, NEGQTYSOPINV, DEX_ROW_ID FROM .RM00401 WHERE DOCDATE = @DOCDATE_RS AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY DOCDATE ASC, RMDTYPAL ASC, DOCNUMBR ASC END ELSE BEGIN SELECT TOP 25  DOCNUMBR, RMDTYPAL, DCSTATUS, BCHSOURC, TRXSORCE, CUSTNMBR, CHEKNMBR, DOCDATE, NEGQTYSOPINV, DEX_ROW_ID FROM .RM00401 WHERE DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY DOCDATE ASC, RMDTYPAL ASC, DOCNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00401F_4] TO [DYNGRP]
GO