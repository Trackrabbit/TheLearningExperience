SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10206SS_2] (@EMPLOYID char(15), @STATECD char(3)) AS  set nocount on SELECT TOP 1  DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, STATECD, TTLSTTAX, STTXTIPS, TXBLWAGS, TXBLTIPS, BLDCHERR, DEX_ROW_ID FROM .UPR10206 WHERE EMPLOYID = @EMPLOYID AND STATECD = @STATECD ORDER BY EMPLOYID ASC, STATECD ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10206SS_2] TO [DYNGRP]
GO