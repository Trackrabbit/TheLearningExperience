SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30500SS_5] (@POSTEDDT datetime) AS  set nocount on SELECT TOP 1  IVDOCTYP, DOCNUMBR, ITEMNMBR, TRXSORCE, ACTINDX, DISTTYPE, POSTEDDT, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .IV30500 WHERE POSTEDDT = @POSTEDDT ORDER BY POSTEDDT ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30500SS_5] TO [DYNGRP]
GO