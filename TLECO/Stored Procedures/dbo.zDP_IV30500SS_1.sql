SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30500SS_1] (@TRXSORCE char(13), @ACTINDX int) AS  set nocount on SELECT TOP 1  IVDOCTYP, DOCNUMBR, ITEMNMBR, TRXSORCE, ACTINDX, DISTTYPE, POSTEDDT, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .IV30500 WHERE TRXSORCE = @TRXSORCE AND ACTINDX = @ACTINDX ORDER BY TRXSORCE ASC, ACTINDX ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30500SS_1] TO [DYNGRP]
GO