SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40300N_1] (@BS int, @YEAR1 smallint, @PERIODID smallint, @YEAR1_RS smallint, @PERIODID_RS smallint, @YEAR1_RE smallint, @PERIODID_RE smallint) AS  set nocount on IF @YEAR1_RS IS NULL BEGIN SELECT TOP 25  YEAR1, PERIODID, PSTGNMBR, DEX_ROW_ID FROM .GL40300 WHERE ( YEAR1 = @YEAR1 AND PERIODID > @PERIODID OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, PERIODID ASC END ELSE IF @YEAR1_RS = @YEAR1_RE BEGIN SELECT TOP 25  YEAR1, PERIODID, PSTGNMBR, DEX_ROW_ID FROM .GL40300 WHERE YEAR1 = @YEAR1_RS AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND ( YEAR1 = @YEAR1 AND PERIODID > @PERIODID OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, PERIODID ASC END ELSE BEGIN SELECT TOP 25  YEAR1, PERIODID, PSTGNMBR, DEX_ROW_ID FROM .GL40300 WHERE YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND ( YEAR1 = @YEAR1 AND PERIODID > @PERIODID OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, PERIODID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40300N_1] TO [DYNGRP]
GO
