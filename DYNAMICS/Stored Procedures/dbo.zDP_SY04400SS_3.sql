SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04400SS_3] (@SERVERID char(81), @USERID char(15), @PROCNAME char(31), @DATE1 datetime, @TIME1 datetime) AS  set nocount on SELECT TOP 1  SERVERID, USERID, WORDSTID, DPSERIES, PROCNAME, DATE1, TIME1, MESSAGE, CMPNYNAM, DEX_ROW_ID FROM .SY04400 WHERE SERVERID = @SERVERID AND USERID = @USERID AND PROCNAME = @PROCNAME AND DATE1 = @DATE1 AND TIME1 = @TIME1 ORDER BY SERVERID ASC, USERID ASC, PROCNAME ASC, DATE1 ASC, TIME1 ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04400SS_3] TO [DYNGRP]
GO
