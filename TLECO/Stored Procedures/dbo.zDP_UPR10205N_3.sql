SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10205N_3] (@BS int, @EMPLOYID char(15), @BENEFIT char(7), @DEX_ROW_ID int, @EMPLOYID_RS char(15), @BENEFIT_RS char(7), @EMPLOYID_RE char(15), @BENEFIT_RE char(7)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, BENEFIT, TAXABLE, VARBENFT, VARDBAMT, VARDBPCT, BNFTFREQ, TOTLBNFT, AMTBOTIP, BCHSOURC, PRTRXSRC, LASTUSER, LSTDTEDT, TRXBEGDT, TRXENDDT, BLDCHWRG, BLDCHERR, BNFTMTHD, PRCSSQNC, DEX_ROW_ID FROM .UPR10205 WHERE ( EMPLOYID = @EMPLOYID AND BENEFIT = @BENEFIT AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND BENEFIT > @BENEFIT OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, BENEFIT ASC, DEX_ROW_ID ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, BENEFIT, TAXABLE, VARBENFT, VARDBAMT, VARDBPCT, BNFTFREQ, TOTLBNFT, AMTBOTIP, BCHSOURC, PRTRXSRC, LASTUSER, LSTDTEDT, TRXBEGDT, TRXENDDT, BLDCHWRG, BLDCHERR, BNFTMTHD, PRCSSQNC, DEX_ROW_ID FROM .UPR10205 WHERE EMPLOYID = @EMPLOYID_RS AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE AND ( EMPLOYID = @EMPLOYID AND BENEFIT = @BENEFIT AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND BENEFIT > @BENEFIT OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, BENEFIT ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, BENEFIT, TAXABLE, VARBENFT, VARDBAMT, VARDBPCT, BNFTFREQ, TOTLBNFT, AMTBOTIP, BCHSOURC, PRTRXSRC, LASTUSER, LSTDTEDT, TRXBEGDT, TRXENDDT, BLDCHWRG, BLDCHERR, BNFTMTHD, PRCSSQNC, DEX_ROW_ID FROM .UPR10205 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND BENEFIT BETWEEN @BENEFIT_RS AND @BENEFIT_RE AND ( EMPLOYID = @EMPLOYID AND BENEFIT = @BENEFIT AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND BENEFIT > @BENEFIT OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, BENEFIT ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10205N_3] TO [DYNGRP]
GO
