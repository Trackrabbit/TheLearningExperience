SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY40100L_3] (@FORIGIN_RS tinyint, @YEAR1_RS smallint, @ODESCTN_RS char(51), @PERIODID_RS smallint, @SERIES_RS smallint, @FORIGIN_RE tinyint, @YEAR1_RE smallint, @ODESCTN_RE char(51), @PERIODID_RE smallint, @SERIES_RE smallint) AS  set nocount on IF @FORIGIN_RS IS NULL BEGIN SELECT TOP 25  CLOSED, SERIES, ODESCTN, FORIGIN, PERIODID, PERIODDT, PERNAME, PSERIES_1, PSERIES_2, PSERIES_3, PSERIES_4, PSERIES_5, PSERIES_6, YEAR1, PERDENDT, DEX_ROW_TS, DEX_ROW_ID FROM .SY40100 ORDER BY FORIGIN DESC, YEAR1 DESC, ODESCTN DESC, PERIODID DESC, SERIES DESC END ELSE IF @FORIGIN_RS = @FORIGIN_RE BEGIN SELECT TOP 25  CLOSED, SERIES, ODESCTN, FORIGIN, PERIODID, PERIODDT, PERNAME, PSERIES_1, PSERIES_2, PSERIES_3, PSERIES_4, PSERIES_5, PSERIES_6, YEAR1, PERDENDT, DEX_ROW_TS, DEX_ROW_ID FROM .SY40100 WHERE FORIGIN = @FORIGIN_RS AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND ODESCTN BETWEEN @ODESCTN_RS AND @ODESCTN_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE ORDER BY FORIGIN DESC, YEAR1 DESC, ODESCTN DESC, PERIODID DESC, SERIES DESC END ELSE BEGIN SELECT TOP 25  CLOSED, SERIES, ODESCTN, FORIGIN, PERIODID, PERIODDT, PERNAME, PSERIES_1, PSERIES_2, PSERIES_3, PSERIES_4, PSERIES_5, PSERIES_6, YEAR1, PERDENDT, DEX_ROW_TS, DEX_ROW_ID FROM .SY40100 WHERE FORIGIN BETWEEN @FORIGIN_RS AND @FORIGIN_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND ODESCTN BETWEEN @ODESCTN_RS AND @ODESCTN_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE ORDER BY FORIGIN DESC, YEAR1 DESC, ODESCTN DESC, PERIODID DESC, SERIES DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40100L_3] TO [DYNGRP]
GO
