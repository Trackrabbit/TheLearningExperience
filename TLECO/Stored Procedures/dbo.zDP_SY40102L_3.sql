SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY40102L_3] (@FORIGIN_RS tinyint, @YEAR1_RS smallint, @PERNAME_RS char(21), @PERIODID_RS smallint, @FORIGIN_RE tinyint, @YEAR1_RE smallint, @PERNAME_RE char(21), @PERIODID_RE smallint) AS  set nocount on IF @FORIGIN_RS IS NULL BEGIN SELECT TOP 25  CLOSED, SERIES, ODESCTN, FORIGIN, PERIODID, PERIODDT, PERNAME, PSERIES_1, PSERIES_2, PSERIES_3, PSERIES_4, PSERIES_5, PSERIES_6, YEAR1, DEX_ROW_ID FROM .SY40102 ORDER BY FORIGIN DESC, YEAR1 DESC, PERNAME DESC, PERIODID DESC, DEX_ROW_ID DESC END ELSE IF @FORIGIN_RS = @FORIGIN_RE BEGIN SELECT TOP 25  CLOSED, SERIES, ODESCTN, FORIGIN, PERIODID, PERIODDT, PERNAME, PSERIES_1, PSERIES_2, PSERIES_3, PSERIES_4, PSERIES_5, PSERIES_6, YEAR1, DEX_ROW_ID FROM .SY40102 WHERE FORIGIN = @FORIGIN_RS AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERNAME BETWEEN @PERNAME_RS AND @PERNAME_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY FORIGIN DESC, YEAR1 DESC, PERNAME DESC, PERIODID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  CLOSED, SERIES, ODESCTN, FORIGIN, PERIODID, PERIODDT, PERNAME, PSERIES_1, PSERIES_2, PSERIES_3, PSERIES_4, PSERIES_5, PSERIES_6, YEAR1, DEX_ROW_ID FROM .SY40102 WHERE FORIGIN BETWEEN @FORIGIN_RS AND @FORIGIN_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERNAME BETWEEN @PERNAME_RS AND @PERNAME_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE ORDER BY FORIGIN DESC, YEAR1 DESC, PERNAME DESC, PERIODID DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40102L_3] TO [DYNGRP]
GO