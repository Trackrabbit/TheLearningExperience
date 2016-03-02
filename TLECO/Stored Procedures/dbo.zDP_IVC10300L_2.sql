SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC10300L_2] (@DOCTYPE_RS smallint, @INVCNMBR_RS char(21), @DISTTYPE_RS smallint, @ACTINDX_RS int, @DOCTYPE_RE smallint, @INVCNMBR_RE char(21), @DISTTYPE_RE smallint, @ACTINDX_RE int) AS  set nocount on IF @DOCTYPE_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, CRDTAMNT, TRXSORCE, POSTED, DEX_ROW_ID FROM .IVC10300 ORDER BY DOCTYPE DESC, INVCNMBR DESC, DISTTYPE DESC, ACTINDX DESC, DEX_ROW_ID DESC END ELSE IF @DOCTYPE_RS = @DOCTYPE_RE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, CRDTAMNT, TRXSORCE, POSTED, DEX_ROW_ID FROM .IVC10300 WHERE DOCTYPE = @DOCTYPE_RS AND INVCNMBR BETWEEN @INVCNMBR_RS AND @INVCNMBR_RE AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE ORDER BY DOCTYPE DESC, INVCNMBR DESC, DISTTYPE DESC, ACTINDX DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, CRDTAMNT, TRXSORCE, POSTED, DEX_ROW_ID FROM .IVC10300 WHERE DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND INVCNMBR BETWEEN @INVCNMBR_RS AND @INVCNMBR_RE AND DISTTYPE BETWEEN @DISTTYPE_RS AND @DISTTYPE_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE ORDER BY DOCTYPE DESC, INVCNMBR DESC, DISTTYPE DESC, ACTINDX DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC10300L_2] TO [DYNGRP]
GO
