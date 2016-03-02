SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CPO10114N_2] (@BS int, @YEAR1 smallint, @ACTINDX int, @DEX_ROW_ID int, @YEAR1_RS smallint, @ACTINDX_RS int, @YEAR1_RE smallint, @ACTINDX_RE int) AS  set nocount on IF @YEAR1_RS IS NULL BEGIN SELECT TOP 25  YEAR1, PERIODID, ACTINDX, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .CPO10114 WHERE ( YEAR1 = @YEAR1 AND ACTINDX = @ACTINDX AND DEX_ROW_ID > @DEX_ROW_ID OR YEAR1 = @YEAR1 AND ACTINDX > @ACTINDX OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, ACTINDX ASC, DEX_ROW_ID ASC END ELSE IF @YEAR1_RS = @YEAR1_RE BEGIN SELECT TOP 25  YEAR1, PERIODID, ACTINDX, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .CPO10114 WHERE YEAR1 = @YEAR1_RS AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( YEAR1 = @YEAR1 AND ACTINDX = @ACTINDX AND DEX_ROW_ID > @DEX_ROW_ID OR YEAR1 = @YEAR1 AND ACTINDX > @ACTINDX OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, ACTINDX ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  YEAR1, PERIODID, ACTINDX, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .CPO10114 WHERE YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( YEAR1 = @YEAR1 AND ACTINDX = @ACTINDX AND DEX_ROW_ID > @DEX_ROW_ID OR YEAR1 = @YEAR1 AND ACTINDX > @ACTINDX OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, ACTINDX ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CPO10114N_2] TO [DYNGRP]
GO