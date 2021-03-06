SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF50004L_1] (@USERID_RS char(15), @PRCSSQNC_RS smallint, @REPORTID_RS smallint, @ACTNUMST_RS char(129), @USERID_RE char(15), @PRCSSQNC_RE smallint, @REPORTID_RE smallint, @ACTNUMST_RE char(129)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, ACTINDX, ACTNUMST, REPORTID, PRCSSQNC, DEX_ROW_ID FROM .AF50004 ORDER BY USERID DESC, PRCSSQNC DESC, REPORTID DESC, ACTNUMST DESC, DEX_ROW_ID DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, ACTINDX, ACTNUMST, REPORTID, PRCSSQNC, DEX_ROW_ID FROM .AF50004 WHERE USERID = @USERID_RS AND PRCSSQNC BETWEEN @PRCSSQNC_RS AND @PRCSSQNC_RE AND REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND ACTNUMST BETWEEN @ACTNUMST_RS AND @ACTNUMST_RE ORDER BY USERID DESC, PRCSSQNC DESC, REPORTID DESC, ACTNUMST DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  USERID, ACTINDX, ACTNUMST, REPORTID, PRCSSQNC, DEX_ROW_ID FROM .AF50004 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND PRCSSQNC BETWEEN @PRCSSQNC_RS AND @PRCSSQNC_RE AND REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND ACTNUMST BETWEEN @ACTNUMST_RS AND @ACTNUMST_RE ORDER BY USERID DESC, PRCSSQNC DESC, REPORTID DESC, ACTNUMST DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF50004L_1] TO [DYNGRP]
GO
