SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC10300L_4] (@POSTED_RS tinyint, @ACTINDX_RS int, @INVCNMBR_RS char(21), @DOCTYPE_RS smallint, @POSTED_RE tinyint, @ACTINDX_RE int, @INVCNMBR_RE char(21), @DOCTYPE_RE smallint) AS  set nocount on IF @POSTED_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, CRDTAMNT, TRXSORCE, POSTED, DEX_ROW_ID FROM .IVC10300 ORDER BY POSTED DESC, ACTINDX DESC, INVCNMBR DESC, DOCTYPE DESC, DEX_ROW_ID DESC END ELSE IF @POSTED_RS = @POSTED_RE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, CRDTAMNT, TRXSORCE, POSTED, DEX_ROW_ID FROM .IVC10300 WHERE POSTED = @POSTED_RS AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND INVCNMBR BETWEEN @INVCNMBR_RS AND @INVCNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE ORDER BY POSTED DESC, ACTINDX DESC, INVCNMBR DESC, DOCTYPE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, CRDTAMNT, TRXSORCE, POSTED, DEX_ROW_ID FROM .IVC10300 WHERE POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND INVCNMBR BETWEEN @INVCNMBR_RS AND @INVCNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE ORDER BY POSTED DESC, ACTINDX DESC, INVCNMBR DESC, DOCTYPE DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC10300L_4] TO [DYNGRP]
GO
