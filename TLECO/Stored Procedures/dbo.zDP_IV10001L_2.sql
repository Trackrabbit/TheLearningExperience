SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10001L_2] (@ITEMNMBR_RS char(31), @TRXLOCTN_RS char(11), @ITEMNMBR_RE char(31), @TRXLOCTN_RE char(11)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  IVDOCNBR, IVDOCTYP, ITEMNMBR, LNSEQNBR, UOFM, QTYBSUOM, TRXQTY, UNITCOST, EXTDCOST, TRXLOCTN, TRNSTLOC, TRFQTYTY, TRTQTYTY, IVIVINDX, IVIVOFIX, IVWLNMSG, DECPLCUR, DECPLQTY, USAGETYPE, Reason_Code, DEX_ROW_ID FROM .IV10001 ORDER BY ITEMNMBR DESC, TRXLOCTN DESC, DEX_ROW_ID DESC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  IVDOCNBR, IVDOCTYP, ITEMNMBR, LNSEQNBR, UOFM, QTYBSUOM, TRXQTY, UNITCOST, EXTDCOST, TRXLOCTN, TRNSTLOC, TRFQTYTY, TRTQTYTY, IVIVINDX, IVIVOFIX, IVWLNMSG, DECPLCUR, DECPLQTY, USAGETYPE, Reason_Code, DEX_ROW_ID FROM .IV10001 WHERE ITEMNMBR = @ITEMNMBR_RS AND TRXLOCTN BETWEEN @TRXLOCTN_RS AND @TRXLOCTN_RE ORDER BY ITEMNMBR DESC, TRXLOCTN DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  IVDOCNBR, IVDOCTYP, ITEMNMBR, LNSEQNBR, UOFM, QTYBSUOM, TRXQTY, UNITCOST, EXTDCOST, TRXLOCTN, TRNSTLOC, TRFQTYTY, TRTQTYTY, IVIVINDX, IVIVOFIX, IVWLNMSG, DECPLCUR, DECPLQTY, USAGETYPE, Reason_Code, DEX_ROW_ID FROM .IV10001 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND TRXLOCTN BETWEEN @TRXLOCTN_RS AND @TRXLOCTN_RE ORDER BY ITEMNMBR DESC, TRXLOCTN DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10001L_2] TO [DYNGRP]
GO
