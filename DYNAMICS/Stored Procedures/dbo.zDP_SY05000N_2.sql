SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY05000N_2] (@BS int, @USERID char(15), @CMPNYNAM char(65), @INDEX1 smallint, @INQYTYPE smallint, @SECDESC char(99), @DATE1 datetime, @TIME1 datetime, @DEX_ROW_ID int, @USERID_RS char(15), @CMPNYNAM_RS char(65), @INDEX1_RS smallint, @INQYTYPE_RS smallint, @SECDESC_RS char(99), @DATE1_RS datetime, @TIME1_RS datetime, @USERID_RE char(15), @CMPNYNAM_RE char(65), @INDEX1_RE smallint, @INQYTYPE_RE smallint, @SECDESC_RE char(99), @DATE1_RE datetime, @TIME1_RE datetime) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  INDEX1, PRODNAME, CMPNYNAM, USERID, INQYTYPE, DATE1, TIME1, SECDESC, DEX_ROW_ID FROM .SY05000 WHERE ( USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND INDEX1 = @INDEX1 AND INQYTYPE = @INQYTYPE AND SECDESC = @SECDESC AND DATE1 = @DATE1 AND TIME1 = @TIME1 AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND INDEX1 = @INDEX1 AND INQYTYPE = @INQYTYPE AND SECDESC = @SECDESC AND DATE1 = @DATE1 AND TIME1 > @TIME1 OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND INDEX1 = @INDEX1 AND INQYTYPE = @INQYTYPE AND SECDESC = @SECDESC AND DATE1 > @DATE1 OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND INDEX1 = @INDEX1 AND INQYTYPE = @INQYTYPE AND SECDESC > @SECDESC OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND INDEX1 = @INDEX1 AND INQYTYPE > @INQYTYPE OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND INDEX1 > @INDEX1 OR USERID = @USERID AND CMPNYNAM > @CMPNYNAM OR USERID > @USERID ) ORDER BY USERID ASC, CMPNYNAM ASC, INDEX1 ASC, INQYTYPE ASC, SECDESC ASC, DATE1 ASC, TIME1 ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  INDEX1, PRODNAME, CMPNYNAM, USERID, INQYTYPE, DATE1, TIME1, SECDESC, DEX_ROW_ID FROM .SY05000 WHERE USERID = @USERID_RS AND CMPNYNAM BETWEEN @CMPNYNAM_RS AND @CMPNYNAM_RE AND INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE AND INQYTYPE BETWEEN @INQYTYPE_RS AND @INQYTYPE_RE AND SECDESC BETWEEN @SECDESC_RS AND @SECDESC_RE AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND ( USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND INDEX1 = @INDEX1 AND INQYTYPE = @INQYTYPE AND SECDESC = @SECDESC AND DATE1 = @DATE1 AND TIME1 = @TIME1 AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND INDEX1 = @INDEX1 AND INQYTYPE = @INQYTYPE AND SECDESC = @SECDESC AND DATE1 = @DATE1 AND TIME1 > @TIME1 OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND INDEX1 = @INDEX1 AND INQYTYPE = @INQYTYPE AND SECDESC = @SECDESC AND DATE1 > @DATE1 OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND INDEX1 = @INDEX1 AND INQYTYPE = @INQYTYPE AND SECDESC > @SECDESC OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND INDEX1 = @INDEX1 AND INQYTYPE > @INQYTYPE OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND INDEX1 > @INDEX1 OR USERID = @USERID AND CMPNYNAM > @CMPNYNAM OR USERID > @USERID ) ORDER BY USERID ASC, CMPNYNAM ASC, INDEX1 ASC, INQYTYPE ASC, SECDESC ASC, DATE1 ASC, TIME1 ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  INDEX1, PRODNAME, CMPNYNAM, USERID, INQYTYPE, DATE1, TIME1, SECDESC, DEX_ROW_ID FROM .SY05000 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CMPNYNAM BETWEEN @CMPNYNAM_RS AND @CMPNYNAM_RE AND INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE AND INQYTYPE BETWEEN @INQYTYPE_RS AND @INQYTYPE_RE AND SECDESC BETWEEN @SECDESC_RS AND @SECDESC_RE AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND ( USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND INDEX1 = @INDEX1 AND INQYTYPE = @INQYTYPE AND SECDESC = @SECDESC AND DATE1 = @DATE1 AND TIME1 = @TIME1 AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND INDEX1 = @INDEX1 AND INQYTYPE = @INQYTYPE AND SECDESC = @SECDESC AND DATE1 = @DATE1 AND TIME1 > @TIME1 OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND INDEX1 = @INDEX1 AND INQYTYPE = @INQYTYPE AND SECDESC = @SECDESC AND DATE1 > @DATE1 OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND INDEX1 = @INDEX1 AND INQYTYPE = @INQYTYPE AND SECDESC > @SECDESC OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND INDEX1 = @INDEX1 AND INQYTYPE > @INQYTYPE OR USERID = @USERID AND CMPNYNAM = @CMPNYNAM AND INDEX1 > @INDEX1 OR USERID = @USERID AND CMPNYNAM > @CMPNYNAM OR USERID > @USERID ) ORDER BY USERID ASC, CMPNYNAM ASC, INDEX1 ASC, INQYTYPE ASC, SECDESC ASC, DATE1 ASC, TIME1 ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY05000N_2] TO [DYNGRP]
GO
