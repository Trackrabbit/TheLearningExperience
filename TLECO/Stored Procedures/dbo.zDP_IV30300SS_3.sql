SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30300SS_3] (@ITEMNMBR char(31), @DOCTYPE smallint, @DOCNUMBR char(21), @LNSEQNBR numeric(19,5)) AS  set nocount on SELECT TOP 1  TRXSORCE, DOCTYPE, DOCNUMBR, DOCDATE, HSTMODUL, CUSTNMBR, ITEMNMBR, LNSEQNBR, UOFM, TRXQTY, UNITCOST, EXTDCOST, TRXLOCTN, TRNSTLOC, TRFQTYTY, TRTQTYTY, IVIVINDX, IVIVOFIX, DECPLCUR, DECPLQTY, QTYBSUOM, Reason_Code, DEX_ROW_ID FROM .IV30300 WHERE ITEMNMBR = @ITEMNMBR AND DOCTYPE = @DOCTYPE AND DOCNUMBR = @DOCNUMBR AND LNSEQNBR = @LNSEQNBR ORDER BY ITEMNMBR ASC, DOCTYPE ASC, DOCNUMBR ASC, LNSEQNBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30300SS_3] TO [DYNGRP]
GO
