SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL50011F_2] (@AMNTFROM_RS smallint, @ACTINDX_RS int, @PERIODID_RS smallint, @AMNTFROM_RE smallint, @ACTINDX_RE int, @PERIODID_RE smallint) AS  set nocount on IF @AMNTFROM_RS IS NULL BEGIN SELECT TOP 25  YEARID, PERIODID, AMNTFROM, ACTINDX, DOLLAR1, SQLSESID, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .GL50011 ORDER BY AMNTFROM ASC, ACTINDX ASC, PERIODID ASC, DEX_ROW_ID ASC END ELSE IF @AMNTFROM_RS = @AMNTFROM_RE BEGIN SELECT TOP 25  YEARID, PERIODID, AMNTFROM, ACTINDX, DOLLAR1, SQLSESID, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .GL50011 WHERE AMNTFROM = @AMNTFROM_RS AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY AMNTFROM ASC, ACTINDX ASC, PERIODID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  YEARID, PERIODID, AMNTFROM, ACTINDX, DOLLAR1, SQLSESID, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .GL50011 WHERE AMNTFROM BETWEEN @AMNTFROM_RS AND @AMNTFROM_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY AMNTFROM ASC, ACTINDX ASC, PERIODID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL50011F_2] TO [DYNGRP]
GO
