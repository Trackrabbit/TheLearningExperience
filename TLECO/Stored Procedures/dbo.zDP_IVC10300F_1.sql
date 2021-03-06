SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC10300F_1] (@DOCTYPE_RS smallint, @INVCNMBR_RS char(21), @SEQNUMBR_RS int, @DOCTYPE_RE smallint, @INVCNMBR_RE char(21), @SEQNUMBR_RE int) AS  set nocount on IF @DOCTYPE_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, CRDTAMNT, TRXSORCE, POSTED, DEX_ROW_ID FROM .IVC10300 ORDER BY DOCTYPE ASC, INVCNMBR ASC, SEQNUMBR ASC END ELSE IF @DOCTYPE_RS = @DOCTYPE_RE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, CRDTAMNT, TRXSORCE, POSTED, DEX_ROW_ID FROM .IVC10300 WHERE DOCTYPE = @DOCTYPE_RS AND INVCNMBR BETWEEN @INVCNMBR_RS AND @INVCNMBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY DOCTYPE ASC, INVCNMBR ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, CRDTAMNT, TRXSORCE, POSTED, DEX_ROW_ID FROM .IVC10300 WHERE DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND INVCNMBR BETWEEN @INVCNMBR_RS AND @INVCNMBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY DOCTYPE ASC, INVCNMBR ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC10300F_1] TO [DYNGRP]
GO
