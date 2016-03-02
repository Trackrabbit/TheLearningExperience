SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2530201L_1] (@PMNTNMBR_RS char(21), @KEYFIELD_RS char(21), @APTVCHNM_RS char(21), @APTODCTY_RS smallint, @APFVCHNM_RS char(21), @APFRDCTY_RS smallint, @PMNTNMBR_RE char(21), @KEYFIELD_RE char(21), @APTVCHNM_RE char(21), @APTODCTY_RE smallint, @APFVCHNM_RE char(21), @APFRDCTY_RE smallint) AS /* 12.00.0311.000 */ set nocount on IF @PMNTNMBR_RS IS NULL BEGIN SELECT TOP 25  DiscTknTot, NetCkAmt, PdTot, NegTot, CrdDocAmt, TotDocAmt, WrOffTot, CrdtDesc, TRXDSCRN, PrtOnStb, PMNTNMBR, KEYFIELD, APFVCHNM, APTVCHNM, APFRDCTY, APTODCTY, DOCNUMBR, DOCDATE, AMNTPAID, CRDTAMNT, DocDueDate, DOCAMNT, DISCDATE, DISTKNAM, WROFAMNT, PPSAMDED, GSTDSAMT, CURNCYID, Outstanding_Amount, Net_Paid_Amount, VCHRNMBR, DOCTYPE, Selected_To_Print, DEX_ROW_ID FROM .B2530201 ORDER BY PMNTNMBR DESC, KEYFIELD DESC, APTVCHNM DESC, APTODCTY DESC, APFVCHNM DESC, APFRDCTY DESC END ELSE IF @PMNTNMBR_RS = @PMNTNMBR_RE BEGIN SELECT TOP 25  DiscTknTot, NetCkAmt, PdTot, NegTot, CrdDocAmt, TotDocAmt, WrOffTot, CrdtDesc, TRXDSCRN, PrtOnStb, PMNTNMBR, KEYFIELD, APFVCHNM, APTVCHNM, APFRDCTY, APTODCTY, DOCNUMBR, DOCDATE, AMNTPAID, CRDTAMNT, DocDueDate, DOCAMNT, DISCDATE, DISTKNAM, WROFAMNT, PPSAMDED, GSTDSAMT, CURNCYID, Outstanding_Amount, Net_Paid_Amount, VCHRNMBR, DOCTYPE, Selected_To_Print, DEX_ROW_ID FROM .B2530201 WHERE PMNTNMBR = @PMNTNMBR_RS AND KEYFIELD BETWEEN @KEYFIELD_RS AND @KEYFIELD_RE AND APTVCHNM BETWEEN @APTVCHNM_RS AND @APTVCHNM_RE AND APTODCTY BETWEEN @APTODCTY_RS AND @APTODCTY_RE AND APFVCHNM BETWEEN @APFVCHNM_RS AND @APFVCHNM_RE AND APFRDCTY BETWEEN @APFRDCTY_RS AND @APFRDCTY_RE ORDER BY PMNTNMBR DESC, KEYFIELD DESC, APTVCHNM DESC, APTODCTY DESC, APFVCHNM DESC, APFRDCTY DESC END ELSE BEGIN SELECT TOP 25  DiscTknTot, NetCkAmt, PdTot, NegTot, CrdDocAmt, TotDocAmt, WrOffTot, CrdtDesc, TRXDSCRN, PrtOnStb, PMNTNMBR, KEYFIELD, APFVCHNM, APTVCHNM, APFRDCTY, APTODCTY, DOCNUMBR, DOCDATE, AMNTPAID, CRDTAMNT, DocDueDate, DOCAMNT, DISCDATE, DISTKNAM, WROFAMNT, PPSAMDED, GSTDSAMT, CURNCYID, Outstanding_Amount, Net_Paid_Amount, VCHRNMBR, DOCTYPE, Selected_To_Print, DEX_ROW_ID FROM .B2530201 WHERE PMNTNMBR BETWEEN @PMNTNMBR_RS AND @PMNTNMBR_RE AND KEYFIELD BETWEEN @KEYFIELD_RS AND @KEYFIELD_RE AND APTVCHNM BETWEEN @APTVCHNM_RS AND @APTVCHNM_RE AND APTODCTY BETWEEN @APTODCTY_RS AND @APTODCTY_RE AND APFVCHNM BETWEEN @APFVCHNM_RS AND @APFVCHNM_RE AND APFRDCTY BETWEEN @APFRDCTY_RS AND @APFRDCTY_RE ORDER BY PMNTNMBR DESC, KEYFIELD DESC, APTVCHNM DESC, APTODCTY DESC, APFVCHNM DESC, APFRDCTY DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2530201L_1] TO [DYNGRP]
GO