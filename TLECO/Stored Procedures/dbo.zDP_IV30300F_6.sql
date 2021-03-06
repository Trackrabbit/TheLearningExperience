SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30300F_6] (@DOCDATE_RS datetime, @DOCDATE_RE datetime) AS  set nocount on IF @DOCDATE_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, DOCTYPE, DOCNUMBR, DOCDATE, HSTMODUL, CUSTNMBR, ITEMNMBR, LNSEQNBR, UOFM, TRXQTY, UNITCOST, EXTDCOST, TRXLOCTN, TRNSTLOC, TRFQTYTY, TRTQTYTY, IVIVINDX, IVIVOFIX, DECPLCUR, DECPLQTY, QTYBSUOM, Reason_Code, DEX_ROW_ID FROM .IV30300 ORDER BY DOCDATE ASC, DEX_ROW_ID ASC END ELSE IF @DOCDATE_RS = @DOCDATE_RE BEGIN SELECT TOP 25  TRXSORCE, DOCTYPE, DOCNUMBR, DOCDATE, HSTMODUL, CUSTNMBR, ITEMNMBR, LNSEQNBR, UOFM, TRXQTY, UNITCOST, EXTDCOST, TRXLOCTN, TRNSTLOC, TRFQTYTY, TRTQTYTY, IVIVINDX, IVIVOFIX, DECPLCUR, DECPLQTY, QTYBSUOM, Reason_Code, DEX_ROW_ID FROM .IV30300 WHERE DOCDATE = @DOCDATE_RS ORDER BY DOCDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TRXSORCE, DOCTYPE, DOCNUMBR, DOCDATE, HSTMODUL, CUSTNMBR, ITEMNMBR, LNSEQNBR, UOFM, TRXQTY, UNITCOST, EXTDCOST, TRXLOCTN, TRNSTLOC, TRFQTYTY, TRTQTYTY, IVIVINDX, IVIVOFIX, DECPLCUR, DECPLQTY, QTYBSUOM, Reason_Code, DEX_ROW_ID FROM .IV30300 WHERE DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE ORDER BY DOCDATE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30300F_6] TO [DYNGRP]
GO
