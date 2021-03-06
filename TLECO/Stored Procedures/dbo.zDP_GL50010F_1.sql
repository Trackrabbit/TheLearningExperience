SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL50010F_1] (@USERID_RS char(15), @AMNTFROM_RS smallint, @YEARID_RS char(15), @ACTINDX_RS int, @SQLSESID_RS int, @USERID_RE char(15), @AMNTFROM_RE smallint, @YEARID_RE char(15), @ACTINDX_RE int, @SQLSESID_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, YEARID, AMNTFROM, ACTINDX, SQLSESID, DEX_ROW_ID FROM .GL50010 ORDER BY USERID ASC, AMNTFROM ASC, YEARID ASC, ACTINDX ASC, SQLSESID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, YEARID, AMNTFROM, ACTINDX, SQLSESID, DEX_ROW_ID FROM .GL50010 WHERE USERID = @USERID_RS AND AMNTFROM BETWEEN @AMNTFROM_RS AND @AMNTFROM_RE AND YEARID BETWEEN @YEARID_RS AND @YEARID_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND SQLSESID BETWEEN @SQLSESID_RS AND @SQLSESID_RE ORDER BY USERID ASC, AMNTFROM ASC, YEARID ASC, ACTINDX ASC, SQLSESID ASC END ELSE BEGIN SELECT TOP 25  USERID, YEARID, AMNTFROM, ACTINDX, SQLSESID, DEX_ROW_ID FROM .GL50010 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND AMNTFROM BETWEEN @AMNTFROM_RS AND @AMNTFROM_RE AND YEARID BETWEEN @YEARID_RS AND @YEARID_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND SQLSESID BETWEEN @SQLSESID_RS AND @SQLSESID_RE ORDER BY USERID ASC, AMNTFROM ASC, YEARID ASC, ACTINDX ASC, SQLSESID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL50010F_1] TO [DYNGRP]
GO
