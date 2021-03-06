SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40310N_1] (@BS int, @YEAR1 smallint, @DATE1 datetime, @YEAR1_RS smallint, @DATE1_RS datetime, @YEAR1_RE smallint, @DATE1_RE datetime) AS  set nocount on IF @YEAR1_RS IS NULL BEGIN SELECT TOP 25  YEAR1, DATE1, DateDescription, DEX_ROW_ID FROM .WF40310 WHERE ( YEAR1 = @YEAR1 AND DATE1 > @DATE1 OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, DATE1 ASC END ELSE IF @YEAR1_RS = @YEAR1_RE BEGIN SELECT TOP 25  YEAR1, DATE1, DateDescription, DEX_ROW_ID FROM .WF40310 WHERE YEAR1 = @YEAR1_RS AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND ( YEAR1 = @YEAR1 AND DATE1 > @DATE1 OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, DATE1 ASC END ELSE BEGIN SELECT TOP 25  YEAR1, DATE1, DateDescription, DEX_ROW_ID FROM .WF40310 WHERE YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND ( YEAR1 = @YEAR1 AND DATE1 > @DATE1 OR YEAR1 > @YEAR1 ) ORDER BY YEAR1 ASC, DATE1 ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40310N_1] TO [DYNGRP]
GO
