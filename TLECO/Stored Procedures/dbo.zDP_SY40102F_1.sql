SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY40102F_1] (@FORIGIN_RS tinyint, @YEAR1_RS smallint, @PERIODID_RS smallint, @SERIES_RS smallint, @ODESCTN_RS char(51), @FORIGIN_RE tinyint, @YEAR1_RE smallint, @PERIODID_RE smallint, @SERIES_RE smallint, @ODESCTN_RE char(51)) AS  set nocount on IF @FORIGIN_RS IS NULL BEGIN SELECT TOP 25  CLOSED, SERIES, ODESCTN, FORIGIN, PERIODID, PERIODDT, PERNAME, PSERIES_1, PSERIES_2, PSERIES_3, PSERIES_4, PSERIES_5, PSERIES_6, YEAR1, DEX_ROW_ID FROM .SY40102 ORDER BY FORIGIN ASC, YEAR1 ASC, PERIODID ASC, SERIES ASC, ODESCTN ASC END ELSE IF @FORIGIN_RS = @FORIGIN_RE BEGIN SELECT TOP 25  CLOSED, SERIES, ODESCTN, FORIGIN, PERIODID, PERIODDT, PERNAME, PSERIES_1, PSERIES_2, PSERIES_3, PSERIES_4, PSERIES_5, PSERIES_6, YEAR1, DEX_ROW_ID FROM .SY40102 WHERE FORIGIN = @FORIGIN_RS AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND ODESCTN BETWEEN @ODESCTN_RS AND @ODESCTN_RE ORDER BY FORIGIN ASC, YEAR1 ASC, PERIODID ASC, SERIES ASC, ODESCTN ASC END ELSE BEGIN SELECT TOP 25  CLOSED, SERIES, ODESCTN, FORIGIN, PERIODID, PERIODDT, PERNAME, PSERIES_1, PSERIES_2, PSERIES_3, PSERIES_4, PSERIES_5, PSERIES_6, YEAR1, DEX_ROW_ID FROM .SY40102 WHERE FORIGIN BETWEEN @FORIGIN_RS AND @FORIGIN_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND ODESCTN BETWEEN @ODESCTN_RS AND @ODESCTN_RE ORDER BY FORIGIN ASC, YEAR1 ASC, PERIODID ASC, SERIES ASC, ODESCTN ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40102F_1] TO [DYNGRP]
GO