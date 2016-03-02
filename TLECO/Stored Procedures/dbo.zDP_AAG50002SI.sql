SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG50002SI] (@USERID char(15), @TRXBTCHSRC char(51), @aaSubLedgerHdrID int, @aaSubLedgerDistID int, @aaSubLedgerAssignID int, @SERIES smallint, @DEBITAMT numeric(19,5), @CRDTAMNT numeric(19,5), @ORDBTAMT numeric(19,5), @ORCRDAMT numeric(19,5), @DistRef char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG50002 (USERID, TRXBTCHSRC, aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID, SERIES, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DistRef) VALUES ( @USERID, @TRXBTCHSRC, @aaSubLedgerHdrID, @aaSubLedgerDistID, @aaSubLedgerAssignID, @SERIES, @DEBITAMT, @CRDTAMNT, @ORDBTAMT, @ORCRDAMT, @DistRef) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG50002SI] TO [DYNGRP]
GO
