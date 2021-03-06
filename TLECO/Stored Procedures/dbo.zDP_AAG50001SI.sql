SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG50001SI] (@USERID char(15), @TRXBTCHSRC char(51), @SERIES smallint, @aaSubLedgerHdrID int, @aaSubLedgerDistID int, @ACTINDX int, @DEBITAMT numeric(19,5), @CRDTAMNT numeric(19,5), @ORDBTAMT numeric(19,5), @ORCRDAMT numeric(19,5), @CURNCYID char(15), @CURRNIDX smallint, @POSTED tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG50001 (USERID, TRXBTCHSRC, SERIES, aaSubLedgerHdrID, aaSubLedgerDistID, ACTINDX, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, POSTED) VALUES ( @USERID, @TRXBTCHSRC, @SERIES, @aaSubLedgerHdrID, @aaSubLedgerDistID, @ACTINDX, @DEBITAMT, @CRDTAMNT, @ORDBTAMT, @ORCRDAMT, @CURNCYID, @CURRNIDX, @POSTED) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG50001SI] TO [DYNGRP]
GO
