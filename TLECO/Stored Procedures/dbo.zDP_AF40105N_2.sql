SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_AF40105N_2] (@BS int, @REPORTID smallint, @TKNTYPE smallint, @CLCOLNUM smallint, @TKNODNUM smallint, @REPORTID_RS smallint, @TKNTYPE_RS smallint, @CLCOLNUM_RS smallint, @TKNODNUM_RS smallint, @REPORTID_RE smallint, @TKNTYPE_RE smallint, @CLCOLNUM_RE smallint, @TKNODNUM_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @REPORTID_RS IS NULL BEGIN SELECT TOP 25  REPORTID, CLCOLNUM, TKNODNUM, TKNTYPE, TKNVALUE, TKNDLVAL, TKNUNACT_1, TKNUNACT_2, TKNUNACT_3, TKNUNACT_4, DEX_ROW_ID FROM .AF40105 WHERE ( REPORTID = @REPORTID AND TKNTYPE = @TKNTYPE AND CLCOLNUM = @CLCOLNUM AND TKNODNUM > @TKNODNUM OR REPORTID = @REPORTID AND TKNTYPE = @TKNTYPE AND CLCOLNUM > @CLCOLNUM OR REPORTID = @REPORTID AND TKNTYPE > @TKNTYPE OR REPORTID > @REPORTID ) ORDER BY REPORTID ASC, TKNTYPE ASC, CLCOLNUM ASC, TKNODNUM ASC END ELSE IF @REPORTID_RS = @REPORTID_RE BEGIN SELECT TOP 25  REPORTID, CLCOLNUM, TKNODNUM, TKNTYPE, TKNVALUE, TKNDLVAL, TKNUNACT_1, TKNUNACT_2, TKNUNACT_3, TKNUNACT_4, DEX_ROW_ID FROM .AF40105 WHERE REPORTID = @REPORTID_RS AND TKNTYPE BETWEEN @TKNTYPE_RS AND @TKNTYPE_RE AND CLCOLNUM BETWEEN @CLCOLNUM_RS AND @CLCOLNUM_RE AND TKNODNUM BETWEEN @TKNODNUM_RS AND @TKNODNUM_RE AND ( REPORTID = @REPORTID AND TKNTYPE = @TKNTYPE AND CLCOLNUM = @CLCOLNUM AND TKNODNUM > @TKNODNUM OR REPORTID = @REPORTID AND TKNTYPE = @TKNTYPE AND CLCOLNUM > @CLCOLNUM OR REPORTID = @REPORTID AND TKNTYPE > @TKNTYPE OR REPORTID > @REPORTID ) ORDER BY REPORTID ASC, TKNTYPE ASC, CLCOLNUM ASC, TKNODNUM ASC END ELSE BEGIN SELECT TOP 25  REPORTID, CLCOLNUM, TKNODNUM, TKNTYPE, TKNVALUE, TKNDLVAL, TKNUNACT_1, TKNUNACT_2, TKNUNACT_3, TKNUNACT_4, DEX_ROW_ID FROM .AF40105 WHERE REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND TKNTYPE BETWEEN @TKNTYPE_RS AND @TKNTYPE_RE AND CLCOLNUM BETWEEN @CLCOLNUM_RS AND @CLCOLNUM_RE AND TKNODNUM BETWEEN @TKNODNUM_RS AND @TKNODNUM_RE AND ( REPORTID = @REPORTID AND TKNTYPE = @TKNTYPE AND CLCOLNUM = @CLCOLNUM AND TKNODNUM > @TKNODNUM OR REPORTID = @REPORTID AND TKNTYPE = @TKNTYPE AND CLCOLNUM > @CLCOLNUM OR REPORTID = @REPORTID AND TKNTYPE > @TKNTYPE OR REPORTID > @REPORTID ) ORDER BY REPORTID ASC, TKNTYPE ASC, CLCOLNUM ASC, TKNODNUM ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_AF40105N_2] TO [DYNGRP]
GO
