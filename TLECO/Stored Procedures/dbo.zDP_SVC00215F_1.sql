SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00215F_1] (@USERID_RS char(15), @SRVRECTYPE_RS smallint, @MKDTOPST_RS tinyint, @CALLNBR_RS char(11), @USERID_RE char(15), @SRVRECTYPE_RE smallint, @MKDTOPST_RE tinyint, @CALLNBR_RE char(11)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, SRVRECTYPE, CALLNBR, SRVSTAT, CUSTNMBR, TECHID, OFFID, CUSTNAME, NAME, OFFNAME, SRVTYPE, SVCDESCR, PRETAXTOT, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SVC00215 ORDER BY USERID ASC, SRVRECTYPE ASC, MKDTOPST ASC, CALLNBR ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, SRVRECTYPE, CALLNBR, SRVSTAT, CUSTNMBR, TECHID, OFFID, CUSTNAME, NAME, OFFNAME, SRVTYPE, SVCDESCR, PRETAXTOT, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SVC00215 WHERE USERID = @USERID_RS AND SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND MKDTOPST BETWEEN @MKDTOPST_RS AND @MKDTOPST_RE AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE ORDER BY USERID ASC, SRVRECTYPE ASC, MKDTOPST ASC, CALLNBR ASC END ELSE BEGIN SELECT TOP 25  USERID, SRVRECTYPE, CALLNBR, SRVSTAT, CUSTNMBR, TECHID, OFFID, CUSTNAME, NAME, OFFNAME, SRVTYPE, SVCDESCR, PRETAXTOT, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SVC00215 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND MKDTOPST BETWEEN @MKDTOPST_RS AND @MKDTOPST_RE AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE ORDER BY USERID ASC, SRVRECTYPE ASC, MKDTOPST ASC, CALLNBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00215F_1] TO [DYNGRP]
GO
