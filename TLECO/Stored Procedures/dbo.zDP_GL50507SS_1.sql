SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL50507SS_1] (@TRXDATE datetime, @JRNENTRY int, @ACTINDX int, @DEBITAMT numeric(19,5), @CRDTAMNT numeric(19,5)) AS  set nocount on SELECT TOP 1  TRXDATE, JRNENTRY, ORTRXSRC, ORCTRNUM, ACTINDX, DEBITAMT, CRDTAMNT, ACCTAMNT, DEX_ROW_ID FROM .GL50507 WHERE TRXDATE = @TRXDATE AND JRNENTRY = @JRNENTRY AND ACTINDX = @ACTINDX AND DEBITAMT = @DEBITAMT AND CRDTAMNT = @CRDTAMNT ORDER BY TRXDATE ASC, JRNENTRY ASC, ACTINDX ASC, DEBITAMT ASC, CRDTAMNT ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL50507SS_1] TO [DYNGRP]
GO
