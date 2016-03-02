SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR30401N_2] (@BS int, @AUCTRLCD char(13), @STATECD char(3), @DEPRTMNT char(7), @JOBTITLE char(7), @DEX_ROW_ID int, @AUCTRLCD_RS char(13), @STATECD_RS char(3), @DEPRTMNT_RS char(7), @JOBTITLE_RS char(7), @AUCTRLCD_RE char(13), @STATECD_RE char(3), @DEPRTMNT_RE char(7), @JOBTITLE_RE char(7)) AS  set nocount on IF @AUCTRLCD_RS IS NULL BEGIN SELECT TOP 25  AUCTRLCD, PYADNMBR, PYRLRTYP, TRXNUMBER, SEQNUMBR, SRCECODE, DEPRTMNT, JOBTITLE, STATECD, EMPLOYID, DEBITAMT, CRDTAMNT, ACTINDX, POSTEDDT, PAYROLCD, UPRACTYP, DEX_ROW_ID FROM .UPR30401 WHERE ( AUCTRLCD = @AUCTRLCD AND STATECD = @STATECD AND DEPRTMNT = @DEPRTMNT AND JOBTITLE = @JOBTITLE AND DEX_ROW_ID > @DEX_ROW_ID OR AUCTRLCD = @AUCTRLCD AND STATECD = @STATECD AND DEPRTMNT = @DEPRTMNT AND JOBTITLE > @JOBTITLE OR AUCTRLCD = @AUCTRLCD AND STATECD = @STATECD AND DEPRTMNT > @DEPRTMNT OR AUCTRLCD = @AUCTRLCD AND STATECD > @STATECD OR AUCTRLCD > @AUCTRLCD ) ORDER BY AUCTRLCD ASC, STATECD ASC, DEPRTMNT ASC, JOBTITLE ASC, DEX_ROW_ID ASC END ELSE IF @AUCTRLCD_RS = @AUCTRLCD_RE BEGIN SELECT TOP 25  AUCTRLCD, PYADNMBR, PYRLRTYP, TRXNUMBER, SEQNUMBR, SRCECODE, DEPRTMNT, JOBTITLE, STATECD, EMPLOYID, DEBITAMT, CRDTAMNT, ACTINDX, POSTEDDT, PAYROLCD, UPRACTYP, DEX_ROW_ID FROM .UPR30401 WHERE AUCTRLCD = @AUCTRLCD_RS AND STATECD BETWEEN @STATECD_RS AND @STATECD_RE AND DEPRTMNT BETWEEN @DEPRTMNT_RS AND @DEPRTMNT_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND ( AUCTRLCD = @AUCTRLCD AND STATECD = @STATECD AND DEPRTMNT = @DEPRTMNT AND JOBTITLE = @JOBTITLE AND DEX_ROW_ID > @DEX_ROW_ID OR AUCTRLCD = @AUCTRLCD AND STATECD = @STATECD AND DEPRTMNT = @DEPRTMNT AND JOBTITLE > @JOBTITLE OR AUCTRLCD = @AUCTRLCD AND STATECD = @STATECD AND DEPRTMNT > @DEPRTMNT OR AUCTRLCD = @AUCTRLCD AND STATECD > @STATECD OR AUCTRLCD > @AUCTRLCD ) ORDER BY AUCTRLCD ASC, STATECD ASC, DEPRTMNT ASC, JOBTITLE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  AUCTRLCD, PYADNMBR, PYRLRTYP, TRXNUMBER, SEQNUMBR, SRCECODE, DEPRTMNT, JOBTITLE, STATECD, EMPLOYID, DEBITAMT, CRDTAMNT, ACTINDX, POSTEDDT, PAYROLCD, UPRACTYP, DEX_ROW_ID FROM .UPR30401 WHERE AUCTRLCD BETWEEN @AUCTRLCD_RS AND @AUCTRLCD_RE AND STATECD BETWEEN @STATECD_RS AND @STATECD_RE AND DEPRTMNT BETWEEN @DEPRTMNT_RS AND @DEPRTMNT_RE AND JOBTITLE BETWEEN @JOBTITLE_RS AND @JOBTITLE_RE AND ( AUCTRLCD = @AUCTRLCD AND STATECD = @STATECD AND DEPRTMNT = @DEPRTMNT AND JOBTITLE = @JOBTITLE AND DEX_ROW_ID > @DEX_ROW_ID OR AUCTRLCD = @AUCTRLCD AND STATECD = @STATECD AND DEPRTMNT = @DEPRTMNT AND JOBTITLE > @JOBTITLE OR AUCTRLCD = @AUCTRLCD AND STATECD = @STATECD AND DEPRTMNT > @DEPRTMNT OR AUCTRLCD = @AUCTRLCD AND STATECD > @STATECD OR AUCTRLCD > @AUCTRLCD ) ORDER BY AUCTRLCD ASC, STATECD ASC, DEPRTMNT ASC, JOBTITLE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30401N_2] TO [DYNGRP]
GO
