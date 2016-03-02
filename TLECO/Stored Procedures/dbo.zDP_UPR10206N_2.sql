SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10206N_2] (@BS int, @EMPLOYID char(15), @STATECD char(3), @DEX_ROW_ID int, @EMPLOYID_RS char(15), @STATECD_RS char(3), @EMPLOYID_RE char(15), @STATECD_RE char(3)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, STATECD, TTLSTTAX, STTXTIPS, TXBLWAGS, TXBLTIPS, BLDCHERR, DEX_ROW_ID FROM .UPR10206 WHERE ( EMPLOYID = @EMPLOYID AND STATECD = @STATECD AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND STATECD > @STATECD OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, STATECD ASC, DEX_ROW_ID ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, STATECD, TTLSTTAX, STTXTIPS, TXBLWAGS, TXBLTIPS, BLDCHERR, DEX_ROW_ID FROM .UPR10206 WHERE EMPLOYID = @EMPLOYID_RS AND STATECD BETWEEN @STATECD_RS AND @STATECD_RE AND ( EMPLOYID = @EMPLOYID AND STATECD = @STATECD AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND STATECD > @STATECD OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, STATECD ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, STATECD, TTLSTTAX, STTXTIPS, TXBLWAGS, TXBLTIPS, BLDCHERR, DEX_ROW_ID FROM .UPR10206 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND STATECD BETWEEN @STATECD_RS AND @STATECD_RE AND ( EMPLOYID = @EMPLOYID AND STATECD = @STATECD AND DEX_ROW_ID > @DEX_ROW_ID OR EMPLOYID = @EMPLOYID AND STATECD > @STATECD OR EMPLOYID > @EMPLOYID ) ORDER BY EMPLOYID ASC, STATECD ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10206N_2] TO [DYNGRP]
GO
