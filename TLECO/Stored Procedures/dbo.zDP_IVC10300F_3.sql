SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC10300F_3] (@TRXSORCE_RS char(13), @ACTINDX_RS int, @DOCTYPE_RS smallint, @INVCNMBR_RS char(21), @TRXSORCE_RE char(13), @ACTINDX_RE int, @DOCTYPE_RE smallint, @INVCNMBR_RE char(21)) AS  set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, CRDTAMNT, TRXSORCE, POSTED, DEX_ROW_ID FROM .IVC10300 ORDER BY TRXSORCE ASC, ACTINDX ASC, DOCTYPE ASC, INVCNMBR ASC, DEX_ROW_ID ASC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, CRDTAMNT, TRXSORCE, POSTED, DEX_ROW_ID FROM .IVC10300 WHERE TRXSORCE = @TRXSORCE_RS AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND INVCNMBR BETWEEN @INVCNMBR_RS AND @INVCNMBR_RE ORDER BY TRXSORCE ASC, ACTINDX ASC, DOCTYPE ASC, INVCNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DOCTYPE, INVCNMBR, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, CRDTAMNT, TRXSORCE, POSTED, DEX_ROW_ID FROM .IVC10300 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND INVCNMBR BETWEEN @INVCNMBR_RS AND @INVCNMBR_RE ORDER BY TRXSORCE ASC, ACTINDX ASC, DOCTYPE ASC, INVCNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC10300F_3] TO [DYNGRP]
GO
