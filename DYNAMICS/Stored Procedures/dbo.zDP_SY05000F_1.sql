SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY05000F_1] (@CMPNYNAM_RS char(65), @USERID_RS char(15), @INDEX1_RS smallint, @INQYTYPE_RS smallint, @SECDESC_RS char(99), @DATE1_RS datetime, @TIME1_RS datetime, @CMPNYNAM_RE char(65), @USERID_RE char(15), @INDEX1_RE smallint, @INQYTYPE_RE smallint, @SECDESC_RE char(99), @DATE1_RE datetime, @TIME1_RE datetime) AS  set nocount on IF @CMPNYNAM_RS IS NULL BEGIN SELECT TOP 25  INDEX1, PRODNAME, CMPNYNAM, USERID, INQYTYPE, DATE1, TIME1, SECDESC, DEX_ROW_ID FROM .SY05000 ORDER BY CMPNYNAM ASC, USERID ASC, INDEX1 ASC, INQYTYPE ASC, SECDESC ASC, DATE1 ASC, TIME1 ASC, DEX_ROW_ID ASC END ELSE IF @CMPNYNAM_RS = @CMPNYNAM_RE BEGIN SELECT TOP 25  INDEX1, PRODNAME, CMPNYNAM, USERID, INQYTYPE, DATE1, TIME1, SECDESC, DEX_ROW_ID FROM .SY05000 WHERE CMPNYNAM = @CMPNYNAM_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE AND INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE AND INQYTYPE BETWEEN @INQYTYPE_RS AND @INQYTYPE_RE AND SECDESC BETWEEN @SECDESC_RS AND @SECDESC_RE AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE ORDER BY CMPNYNAM ASC, USERID ASC, INDEX1 ASC, INQYTYPE ASC, SECDESC ASC, DATE1 ASC, TIME1 ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  INDEX1, PRODNAME, CMPNYNAM, USERID, INQYTYPE, DATE1, TIME1, SECDESC, DEX_ROW_ID FROM .SY05000 WHERE CMPNYNAM BETWEEN @CMPNYNAM_RS AND @CMPNYNAM_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE AND INQYTYPE BETWEEN @INQYTYPE_RS AND @INQYTYPE_RE AND SECDESC BETWEEN @SECDESC_RS AND @SECDESC_RE AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE ORDER BY CMPNYNAM ASC, USERID ASC, INDEX1 ASC, INQYTYPE ASC, SECDESC ASC, DATE1 ASC, TIME1 ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY05000F_1] TO [DYNGRP]
GO
