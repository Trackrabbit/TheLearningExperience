SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30500L_1] (@TRXSORCE_RS char(13), @ACTINDX_RS int, @TRXSORCE_RE char(13), @ACTINDX_RE int) AS  set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  IVDOCTYP, DOCNUMBR, ITEMNMBR, TRXSORCE, ACTINDX, DISTTYPE, POSTEDDT, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .IV30500 ORDER BY TRXSORCE DESC, ACTINDX DESC, DEX_ROW_ID DESC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  IVDOCTYP, DOCNUMBR, ITEMNMBR, TRXSORCE, ACTINDX, DISTTYPE, POSTEDDT, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .IV30500 WHERE TRXSORCE = @TRXSORCE_RS AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE ORDER BY TRXSORCE DESC, ACTINDX DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  IVDOCTYP, DOCNUMBR, ITEMNMBR, TRXSORCE, ACTINDX, DISTTYPE, POSTEDDT, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .IV30500 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE ORDER BY TRXSORCE DESC, ACTINDX DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30500L_1] TO [DYNGRP]
GO