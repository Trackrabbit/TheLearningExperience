SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20400N_1] (@BS int, @CMDNUMWK numeric(19,5), @VOIDED tinyint, @DSTSQNUM int, @CMDNUMWK_RS numeric(19,5), @VOIDED_RS tinyint, @DSTSQNUM_RS int, @CMDNUMWK_RE numeric(19,5), @VOIDED_RE tinyint, @DSTSQNUM_RE int) AS  set nocount on IF @CMDNUMWK_RS IS NULL BEGIN SELECT TOP 25  CMDNUMWK, VOIDED, DSTSQNUM, ACTINDX, DEBITAMT, CRDTAMNT, DistRef, GLPOSTDT, ORCRDAMT, ORDBTAMT, DEX_ROW_ID FROM .CM20400 WHERE ( CMDNUMWK = @CMDNUMWK AND VOIDED = @VOIDED AND DSTSQNUM > @DSTSQNUM OR CMDNUMWK = @CMDNUMWK AND VOIDED > @VOIDED OR CMDNUMWK > @CMDNUMWK ) ORDER BY CMDNUMWK ASC, VOIDED ASC, DSTSQNUM ASC END ELSE IF @CMDNUMWK_RS = @CMDNUMWK_RE BEGIN SELECT TOP 25  CMDNUMWK, VOIDED, DSTSQNUM, ACTINDX, DEBITAMT, CRDTAMNT, DistRef, GLPOSTDT, ORCRDAMT, ORDBTAMT, DEX_ROW_ID FROM .CM20400 WHERE CMDNUMWK = @CMDNUMWK_RS AND VOIDED BETWEEN @VOIDED_RS AND @VOIDED_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE AND ( CMDNUMWK = @CMDNUMWK AND VOIDED = @VOIDED AND DSTSQNUM > @DSTSQNUM OR CMDNUMWK = @CMDNUMWK AND VOIDED > @VOIDED OR CMDNUMWK > @CMDNUMWK ) ORDER BY CMDNUMWK ASC, VOIDED ASC, DSTSQNUM ASC END ELSE BEGIN SELECT TOP 25  CMDNUMWK, VOIDED, DSTSQNUM, ACTINDX, DEBITAMT, CRDTAMNT, DistRef, GLPOSTDT, ORCRDAMT, ORDBTAMT, DEX_ROW_ID FROM .CM20400 WHERE CMDNUMWK BETWEEN @CMDNUMWK_RS AND @CMDNUMWK_RE AND VOIDED BETWEEN @VOIDED_RS AND @VOIDED_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE AND ( CMDNUMWK = @CMDNUMWK AND VOIDED = @VOIDED AND DSTSQNUM > @DSTSQNUM OR CMDNUMWK = @CMDNUMWK AND VOIDED > @VOIDED OR CMDNUMWK > @CMDNUMWK ) ORDER BY CMDNUMWK ASC, VOIDED ASC, DSTSQNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20400N_1] TO [DYNGRP]
GO