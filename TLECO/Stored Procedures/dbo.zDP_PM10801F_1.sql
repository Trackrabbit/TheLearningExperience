SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM10801F_1] (@PMNTNMBR_RS char(21), @SEQNUMBR_RS int, @DSTSQNUM_RS int, @PMNTNMBR_RE char(21), @SEQNUMBR_RE int, @DSTSQNUM_RE int) AS  set nocount on IF @PMNTNMBR_RS IS NULL BEGIN SELECT TOP 25  PMNTNMBR, SEQNUMBR, DSTSQNUM, DiscTknTot, NetCkAmt, PdTot, NegTot, CrdDocAmt, TotDocAmt, WrOffTot, CrdtDesc, TRXDSCRN, PrtOnStb, APTVCHNM, DOCNUMBR, DOCDATE, AMNTPAID, CRDTAMNT, DocDueDate, DOCAMNT, DISCDATE, DISTKNAM, WROFAMNT, PPSAMDED, GSTDSAMT, APFVCHNM, APFRDCTY, APTODCTY, CURNCYID, Outstanding_Amount, Net_Paid_Amount, VCHRNMBR, PONUMBER, DEX_ROW_ID FROM .PM10801 ORDER BY PMNTNMBR ASC, SEQNUMBR ASC, DSTSQNUM ASC, DEX_ROW_ID ASC END ELSE IF @PMNTNMBR_RS = @PMNTNMBR_RE BEGIN SELECT TOP 25  PMNTNMBR, SEQNUMBR, DSTSQNUM, DiscTknTot, NetCkAmt, PdTot, NegTot, CrdDocAmt, TotDocAmt, WrOffTot, CrdtDesc, TRXDSCRN, PrtOnStb, APTVCHNM, DOCNUMBR, DOCDATE, AMNTPAID, CRDTAMNT, DocDueDate, DOCAMNT, DISCDATE, DISTKNAM, WROFAMNT, PPSAMDED, GSTDSAMT, APFVCHNM, APFRDCTY, APTODCTY, CURNCYID, Outstanding_Amount, Net_Paid_Amount, VCHRNMBR, PONUMBER, DEX_ROW_ID FROM .PM10801 WHERE PMNTNMBR = @PMNTNMBR_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE ORDER BY PMNTNMBR ASC, SEQNUMBR ASC, DSTSQNUM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PMNTNMBR, SEQNUMBR, DSTSQNUM, DiscTknTot, NetCkAmt, PdTot, NegTot, CrdDocAmt, TotDocAmt, WrOffTot, CrdtDesc, TRXDSCRN, PrtOnStb, APTVCHNM, DOCNUMBR, DOCDATE, AMNTPAID, CRDTAMNT, DocDueDate, DOCAMNT, DISCDATE, DISTKNAM, WROFAMNT, PPSAMDED, GSTDSAMT, APFVCHNM, APFRDCTY, APTODCTY, CURNCYID, Outstanding_Amount, Net_Paid_Amount, VCHRNMBR, PONUMBER, DEX_ROW_ID FROM .PM10801 WHERE PMNTNMBR BETWEEN @PMNTNMBR_RS AND @PMNTNMBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE ORDER BY PMNTNMBR ASC, SEQNUMBR ASC, DSTSQNUM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10801F_1] TO [DYNGRP]
GO
