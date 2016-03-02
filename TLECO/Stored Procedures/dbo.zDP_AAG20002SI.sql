SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG20002SI] (@aaSubLedgerHdrID int, @aaSubLedgerDistID int, @aaSubLedgerAssignID int, @DEBITAMT numeric(19,5), @CRDTAMNT numeric(19,5), @ORDBTAMT numeric(19,5), @ORCRDAMT numeric(19,5), @aaAssignedPercent int, @DistRef char(31), @NOTEINDX numeric(19,5), @aaAssignErrors binary(4), @aaAliasID int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG20002 (aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, aaAssignedPercent, DistRef, NOTEINDX, aaAssignErrors, aaAliasID) VALUES ( @aaSubLedgerHdrID, @aaSubLedgerDistID, @aaSubLedgerAssignID, @DEBITAMT, @CRDTAMNT, @ORDBTAMT, @ORCRDAMT, @aaAssignedPercent, @DistRef, @NOTEINDX, @aaAssignErrors, @aaAliasID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG20002SI] TO [DYNGRP]
GO
