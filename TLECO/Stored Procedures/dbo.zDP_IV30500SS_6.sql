SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30500SS_6] (@DEX_ROW_ID int) AS  set nocount on SELECT TOP 1  IVDOCTYP, DOCNUMBR, ITEMNMBR, TRXSORCE, ACTINDX, DISTTYPE, POSTEDDT, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .IV30500 WHERE DEX_ROW_ID = @DEX_ROW_ID ORDER BY DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30500SS_6] TO [DYNGRP]
GO
