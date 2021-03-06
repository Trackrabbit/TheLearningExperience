SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20400SS_1] (@CMDNUMWK numeric(19,5), @VOIDED tinyint, @DSTSQNUM int) AS  set nocount on SELECT TOP 1  CMDNUMWK, VOIDED, DSTSQNUM, ACTINDX, DEBITAMT, CRDTAMNT, DistRef, GLPOSTDT, ORCRDAMT, ORDBTAMT, DEX_ROW_ID FROM .CM20400 WHERE CMDNUMWK = @CMDNUMWK AND VOIDED = @VOIDED AND DSTSQNUM = @DSTSQNUM ORDER BY CMDNUMWK ASC, VOIDED ASC, DSTSQNUM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20400SS_1] TO [DYNGRP]
GO
