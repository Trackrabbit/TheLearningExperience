SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CPO10113L_3] (@ACTINDX_RS int, @YEAR1_RS smallint, @PERIODID_RS smallint, @ACTINDX_RE int, @YEAR1_RE smallint, @PERIODID_RE smallint) AS  set nocount on IF @ACTINDX_RS IS NULL BEGIN SELECT TOP 25  JRNENTRY, SQNCLINE, DTAControlNum, DTATRXType, ACTINDX, DEBITAMT, CRDTAMNT, TRXDATE, YEAR1, PERIODID, BACHNUMB, BCHSOURC, SOURCDOC, REFRENCE, DEX_ROW_ID FROM .CPO10113 ORDER BY ACTINDX DESC, YEAR1 DESC, PERIODID DESC, DEX_ROW_ID DESC END ELSE IF @ACTINDX_RS = @ACTINDX_RE BEGIN SELECT TOP 25  JRNENTRY, SQNCLINE, DTAControlNum, DTATRXType, ACTINDX, DEBITAMT, CRDTAMNT, TRXDATE, YEAR1, PERIODID, BACHNUMB, BCHSOURC, SOURCDOC, REFRENCE, DEX_ROW_ID FROM .CPO10113 WHERE ACTINDX = @ACTINDX_RS AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY ACTINDX DESC, YEAR1 DESC, PERIODID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  JRNENTRY, SQNCLINE, DTAControlNum, DTATRXType, ACTINDX, DEBITAMT, CRDTAMNT, TRXDATE, YEAR1, PERIODID, BACHNUMB, BCHSOURC, SOURCDOC, REFRENCE, DEX_ROW_ID FROM .CPO10113 WHERE ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY ACTINDX DESC, YEAR1 DESC, PERIODID DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CPO10113L_3] TO [DYNGRP]
GO