SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30500SS_2] (@IVDOCTYP smallint, @DOCNUMBR char(21), @ITEMNMBR char(31)) AS  set nocount on SELECT TOP 1  IVDOCTYP, DOCNUMBR, ITEMNMBR, TRXSORCE, ACTINDX, DISTTYPE, POSTEDDT, DEBITAMT, CRDTAMNT, DEX_ROW_ID FROM .IV30500 WHERE IVDOCTYP = @IVDOCTYP AND DOCNUMBR = @DOCNUMBR AND ITEMNMBR = @ITEMNMBR ORDER BY IVDOCTYP ASC, DOCNUMBR ASC, ITEMNMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30500SS_2] TO [DYNGRP]
GO
