SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2530201SI] (@DiscTknTot numeric(19,5), @NetCkAmt numeric(19,5), @PdTot numeric(19,5), @NegTot numeric(19,5), @CrdDocAmt numeric(19,5), @TotDocAmt numeric(19,5), @WrOffTot numeric(19,5), @CrdtDesc char(31), @TRXDSCRN char(31), @PrtOnStb tinyint, @PMNTNMBR char(21), @KEYFIELD char(21), @APFVCHNM char(21), @APTVCHNM char(21), @APFRDCTY smallint, @APTODCTY smallint, @DOCNUMBR char(21), @DOCDATE datetime, @AMNTPAID numeric(19,5), @CRDTAMNT numeric(19,5), @DocDueDate datetime, @DOCAMNT numeric(19,5), @DISCDATE datetime, @DISTKNAM numeric(19,5), @WROFAMNT numeric(19,5), @PPSAMDED numeric(19,5), @GSTDSAMT numeric(19,5), @CURNCYID char(15), @Outstanding_Amount numeric(19,5), @Net_Paid_Amount numeric(19,5), @VCHRNMBR char(21), @DOCTYPE smallint, @Selected_To_Print tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .B2530201 (DiscTknTot, NetCkAmt, PdTot, NegTot, CrdDocAmt, TotDocAmt, WrOffTot, CrdtDesc, TRXDSCRN, PrtOnStb, PMNTNMBR, KEYFIELD, APFVCHNM, APTVCHNM, APFRDCTY, APTODCTY, DOCNUMBR, DOCDATE, AMNTPAID, CRDTAMNT, DocDueDate, DOCAMNT, DISCDATE, DISTKNAM, WROFAMNT, PPSAMDED, GSTDSAMT, CURNCYID, Outstanding_Amount, Net_Paid_Amount, VCHRNMBR, DOCTYPE, Selected_To_Print) VALUES ( @DiscTknTot, @NetCkAmt, @PdTot, @NegTot, @CrdDocAmt, @TotDocAmt, @WrOffTot, @CrdtDesc, @TRXDSCRN, @PrtOnStb, @PMNTNMBR, @KEYFIELD, @APFVCHNM, @APTVCHNM, @APFRDCTY, @APTODCTY, @DOCNUMBR, @DOCDATE, @AMNTPAID, @CRDTAMNT, @DocDueDate, @DOCAMNT, @DISCDATE, @DISTKNAM, @WROFAMNT, @PPSAMDED, @GSTDSAMT, @CURNCYID, @Outstanding_Amount, @Net_Paid_Amount, @VCHRNMBR, @DOCTYPE, @Selected_To_Print) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2530201SI] TO [DYNGRP]
GO
