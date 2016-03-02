SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY40100UN_6] (@BS int, @FORIGIN tinyint, @YEAR1 smallint, @PERNAME char(21), @PERIODID smallint, @FORIGIN_RS tinyint, @YEAR1_RS smallint, @PERNAME_RS char(21), @PERIODID_RS smallint, @FORIGIN_RE tinyint, @YEAR1_RE smallint, @PERNAME_RE char(21), @PERIODID_RE smallint) AS  set nocount on IF @FORIGIN_RS IS NULL BEGIN SELECT TOP 25  CLOSED, SERIES, ODESCTN, FORIGIN, PERIODID, PERIODDT, PERNAME, PSERIES_1, PSERIES_2, PSERIES_3, PSERIES_4, PSERIES_5, PSERIES_6, YEAR1, PERDENDT, DEX_ROW_TS, DEX_ROW_ID FROM .SY40100 WHERE ( FORIGIN = @FORIGIN AND YEAR1 = @YEAR1 AND PERNAME = @PERNAME AND PERIODID > @PERIODID OR FORIGIN = @FORIGIN AND YEAR1 = @YEAR1 AND PERNAME > @PERNAME OR FORIGIN = @FORIGIN AND YEAR1 > @YEAR1 OR FORIGIN > @FORIGIN ) ORDER BY FORIGIN ASC, YEAR1 ASC, PERNAME ASC, PERIODID ASC, DEX_ROW_ID ASC END ELSE IF @FORIGIN_RS = @FORIGIN_RE BEGIN SELECT TOP 25  CLOSED, SERIES, ODESCTN, FORIGIN, PERIODID, PERIODDT, PERNAME, PSERIES_1, PSERIES_2, PSERIES_3, PSERIES_4, PSERIES_5, PSERIES_6, YEAR1, PERDENDT, DEX_ROW_TS, DEX_ROW_ID FROM .SY40100 WHERE FORIGIN = @FORIGIN_RS AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERNAME BETWEEN @PERNAME_RS AND @PERNAME_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND ( FORIGIN = @FORIGIN AND YEAR1 = @YEAR1 AND PERNAME = @PERNAME AND PERIODID > @PERIODID OR FORIGIN = @FORIGIN AND YEAR1 = @YEAR1 AND PERNAME > @PERNAME OR FORIGIN = @FORIGIN AND YEAR1 > @YEAR1 OR FORIGIN > @FORIGIN ) ORDER BY FORIGIN ASC, YEAR1 ASC, PERNAME ASC, PERIODID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CLOSED, SERIES, ODESCTN, FORIGIN, PERIODID, PERIODDT, PERNAME, PSERIES_1, PSERIES_2, PSERIES_3, PSERIES_4, PSERIES_5, PSERIES_6, YEAR1, PERDENDT, DEX_ROW_TS, DEX_ROW_ID FROM .SY40100 WHERE FORIGIN BETWEEN @FORIGIN_RS AND @FORIGIN_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND PERNAME BETWEEN @PERNAME_RS AND @PERNAME_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND ( FORIGIN = @FORIGIN AND YEAR1 = @YEAR1 AND PERNAME = @PERNAME AND PERIODID > @PERIODID OR FORIGIN = @FORIGIN AND YEAR1 = @YEAR1 AND PERNAME > @PERNAME OR FORIGIN = @FORIGIN AND YEAR1 > @YEAR1 OR FORIGIN > @FORIGIN ) ORDER BY FORIGIN ASC, YEAR1 ASC, PERNAME ASC, PERIODID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40100UN_6] TO [DYNGRP]
GO
