SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30500N_5] (@BS int, @POSTEDDT datetime, @DEX_ROW_ID int, @POSTEDDT_RS datetime, @POSTEDDT_RE datetime) AS  set nocount on IF @POSTEDDT_RS IS NULL BEGIN SELECT TOP 25  IVDOCTYP, DOCNUMBR, ITEMNMBR, TRXSORCE, ACTINDX, DISTTYPE, POSTEDDT, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .IV30500 WHERE ( POSTEDDT = @POSTEDDT AND DEX_ROW_ID > @DEX_ROW_ID OR POSTEDDT > @POSTEDDT ) ORDER BY POSTEDDT ASC, DEX_ROW_ID ASC END ELSE IF @POSTEDDT_RS = @POSTEDDT_RE BEGIN SELECT TOP 25  IVDOCTYP, DOCNUMBR, ITEMNMBR, TRXSORCE, ACTINDX, DISTTYPE, POSTEDDT, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .IV30500 WHERE POSTEDDT = @POSTEDDT_RS AND ( POSTEDDT = @POSTEDDT AND DEX_ROW_ID > @DEX_ROW_ID OR POSTEDDT > @POSTEDDT ) ORDER BY POSTEDDT ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  IVDOCTYP, DOCNUMBR, ITEMNMBR, TRXSORCE, ACTINDX, DISTTYPE, POSTEDDT, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .IV30500 WHERE POSTEDDT BETWEEN @POSTEDDT_RS AND @POSTEDDT_RE AND ( POSTEDDT = @POSTEDDT AND DEX_ROW_ID > @DEX_ROW_ID OR POSTEDDT > @POSTEDDT ) ORDER BY POSTEDDT ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30500N_5] TO [DYNGRP]
GO
