SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00401N_2] (@BS int, @CUSTNMBR char(15), @CHEKNMBR char(21), @DEX_ROW_ID int, @CUSTNMBR_RS char(15), @CHEKNMBR_RS char(21), @CUSTNMBR_RE char(15), @CHEKNMBR_RE char(21)) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  DOCNUMBR, RMDTYPAL, DCSTATUS, BCHSOURC, TRXSORCE, CUSTNMBR, CHEKNMBR, DOCDATE, NEGQTYSOPINV, DEX_ROW_ID FROM .RM00401 WHERE ( CUSTNMBR = @CUSTNMBR AND CHEKNMBR = @CHEKNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND CHEKNMBR > @CHEKNMBR OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, CHEKNMBR ASC, DEX_ROW_ID ASC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  DOCNUMBR, RMDTYPAL, DCSTATUS, BCHSOURC, TRXSORCE, CUSTNMBR, CHEKNMBR, DOCDATE, NEGQTYSOPINV, DEX_ROW_ID FROM .RM00401 WHERE CUSTNMBR = @CUSTNMBR_RS AND CHEKNMBR BETWEEN @CHEKNMBR_RS AND @CHEKNMBR_RE AND ( CUSTNMBR = @CUSTNMBR AND CHEKNMBR = @CHEKNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND CHEKNMBR > @CHEKNMBR OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, CHEKNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DOCNUMBR, RMDTYPAL, DCSTATUS, BCHSOURC, TRXSORCE, CUSTNMBR, CHEKNMBR, DOCDATE, NEGQTYSOPINV, DEX_ROW_ID FROM .RM00401 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND CHEKNMBR BETWEEN @CHEKNMBR_RS AND @CHEKNMBR_RE AND ( CUSTNMBR = @CUSTNMBR AND CHEKNMBR = @CHEKNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR CUSTNMBR = @CUSTNMBR AND CHEKNMBR > @CHEKNMBR OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, CHEKNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00401N_2] TO [DYNGRP]
GO