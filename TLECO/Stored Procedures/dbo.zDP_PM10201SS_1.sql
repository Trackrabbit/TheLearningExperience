SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM10201SS_1] (@PMNTNMBR char(21), @KEYFIELD char(21), @APTVCHNM char(21), @APTODCTY smallint, @APFVCHNM char(21), @APFRDCTY smallint) AS  set nocount on SELECT TOP 1  DiscTknTot, NetCkAmt, PdTot, NegTot, CrdDocAmt, TotDocAmt, WrOffTot, CrdtDesc, TRXDSCRN, PrtOnStb, PMNTNMBR, KEYFIELD, APFVCHNM, APTVCHNM, APFRDCTY, APTODCTY, DOCNUMBR, DOCDATE, AMNTPAID, CRDTAMNT, DocDueDate, DOCAMNT, DISCDATE, DISTKNAM, WROFAMNT, PPSAMDED, GSTDSAMT, CURNCYID, Outstanding_Amount, Net_Paid_Amount, VCHRNMBR, DOCTYPE, Selected_To_Print, PONUMBER, DEX_ROW_ID FROM .PM10201 WHERE PMNTNMBR = @PMNTNMBR AND KEYFIELD = @KEYFIELD AND APTVCHNM = @APTVCHNM AND APTODCTY = @APTODCTY AND APFVCHNM = @APFVCHNM AND APFRDCTY = @APFRDCTY ORDER BY PMNTNMBR ASC, KEYFIELD ASC, APTVCHNM ASC, APTODCTY ASC, APFVCHNM ASC, APFRDCTY ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10201SS_1] TO [DYNGRP]
GO