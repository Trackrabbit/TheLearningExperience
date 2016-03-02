SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CPO10113N_2] (@BS int, @YEAR1 smallint, @PERIODID smallint, @ACTINDX int, @DEX_ROW_ID int, @YEAR1_RS smallint, @PERIODID_RS smallint, @ACTINDX_RS int, @YEAR1_RE smallint, @PERIODID_RE smallint, @ACTINDX_RE int) AS  set nocount on IF @YEAR1_RS IS NULL BEGIN SELECT TOP 25  JRNENTRY, SQNCLINE, DTAControlNum, DTATRXType, ACTINDX, DEBITAMT, CRDTAMNT, TRXDATE, YEAR1, PERIODID, BACHNUMB, BCHSOURC, SOURCDOC, REFRENCE, DEX_ROW_ID FROM .CPO10113 WHERE ( YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND ACTINDX = @ACTINDX AND DEX_ROW_ID > @DEX_ROW_ID OR YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND ACTINDX > @ACTINDX OR YEAR1 = @YEAR1 AND PERIODID > @PERIODID OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, PERIODID ASC, ACTINDX ASC, DEX_ROW_ID ASC END ELSE IF @YEAR1_RS = @YEAR1_RE BEGIN SELECT TOP 25  JRNENTRY, SQNCLINE, DTAControlNum, DTATRXType, ACTINDX, DEBITAMT, CRDTAMNT, TRXDATE, YEAR1, PERIODID, BACHNUMB, BCHSOURC, SOURCDOC, REFRENCE, DEX_ROW_ID FROM .CPO10113 WHERE YEAR1 = @YEAR1_RS AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND ACTINDX = @ACTINDX AND DEX_ROW_ID > @DEX_ROW_ID OR YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND ACTINDX > @ACTINDX OR YEAR1 = @YEAR1 AND PERIODID > @PERIODID OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, PERIODID ASC, ACTINDX ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  JRNENTRY, SQNCLINE, DTAControlNum, DTATRXType, ACTINDX, DEBITAMT, CRDTAMNT, TRXDATE, YEAR1, PERIODID, BACHNUMB, BCHSOURC, SOURCDOC, REFRENCE, DEX_ROW_ID FROM .CPO10113 WHERE YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND ACTINDX = @ACTINDX AND DEX_ROW_ID > @DEX_ROW_ID OR YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND ACTINDX > @ACTINDX OR YEAR1 = @YEAR1 AND PERIODID > @PERIODID OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, PERIODID ASC, ACTINDX ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CPO10113N_2] TO [DYNGRP]
GO
