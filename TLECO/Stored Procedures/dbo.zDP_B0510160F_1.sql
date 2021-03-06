SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510160F_1] (@YEAR1_RS smallint, @PERIODID_RS smallint, @YEAR1_RE smallint, @PERIODID_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @YEAR1_RS IS NULL BEGIN SELECT TOP 25  YEAR1, PERIODID, PERNAME, PERIODDT, NOTEINDX, DEX_ROW_ID FROM .B0510160 ORDER BY YEAR1 ASC, PERIODID ASC END ELSE IF @YEAR1_RS = @YEAR1_RE BEGIN SELECT TOP 25  YEAR1, PERIODID, PERNAME, PERIODDT, NOTEINDX, DEX_ROW_ID FROM .B0510160 WHERE YEAR1 = @YEAR1_RS AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY YEAR1 ASC, PERIODID ASC END ELSE BEGIN SELECT TOP 25  YEAR1, PERIODID, PERNAME, PERIODDT, NOTEINDX, DEX_ROW_ID FROM .B0510160 WHERE YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY YEAR1 ASC, PERIODID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510160F_1] TO [DYNGRP]
GO
