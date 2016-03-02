SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10207L_2] (@EMPLOYID_RS char(15), @LOCALTAX_RS char(7), @EMPLOYID_RE char(15), @LOCALTAX_RE char(7)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, LOCALTAX, LOTXTIPS, TTLLCLTX, TXBLWAGS, TXBLTIPS, BLDCHERR, DEX_ROW_ID FROM .UPR10207 ORDER BY EMPLOYID DESC, LOCALTAX DESC, DEX_ROW_ID DESC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, LOCALTAX, LOTXTIPS, TTLLCLTX, TXBLWAGS, TXBLTIPS, BLDCHERR, DEX_ROW_ID FROM .UPR10207 WHERE EMPLOYID = @EMPLOYID_RS AND LOCALTAX BETWEEN @LOCALTAX_RS AND @LOCALTAX_RE ORDER BY EMPLOYID DESC, LOCALTAX DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, LOCALTAX, LOTXTIPS, TTLLCLTX, TXBLWAGS, TXBLTIPS, BLDCHERR, DEX_ROW_ID FROM .UPR10207 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND LOCALTAX BETWEEN @LOCALTAX_RS AND @LOCALTAX_RE ORDER BY EMPLOYID DESC, LOCALTAX DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10207L_2] TO [DYNGRP]
GO