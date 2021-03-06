SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30300SS_5] (@ITEMNMBR char(31), @HSTMODUL char(3)) AS  set nocount on SELECT TOP 1  TRXSORCE, DOCTYPE, DOCNUMBR, DOCDATE, HSTMODUL, CUSTNMBR, ITEMNMBR, LNSEQNBR, UOFM, TRXQTY, UNITCOST, EXTDCOST, TRXLOCTN, TRNSTLOC, TRFQTYTY, TRTQTYTY, IVIVINDX, IVIVOFIX, DECPLCUR, DECPLQTY, QTYBSUOM, Reason_Code, DEX_ROW_ID FROM .IV30300 WHERE ITEMNMBR = @ITEMNMBR AND HSTMODUL = @HSTMODUL ORDER BY ITEMNMBR ASC, HSTMODUL ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30300SS_5] TO [DYNGRP]
GO
