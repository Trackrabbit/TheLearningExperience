SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE   procedure [dbo].[aagDelSubLedgerDistForBRVoidTrxns]  @iHdrID int as begin  Delete AAG20003 where aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID in   (select aaSubLedgerDistID from AAG20001 where aaSubLedgerHdrID = @iHdrID   and aaSubLedgerDistID > 0 and POSTED = 0) and aaSubLedgerAssignID > 0 and  aaTrxDimID <> 0   Delete AAG20002 where aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID in   (select aaSubLedgerDistID from AAG20001 where aaSubLedgerHdrID = @iHdrID   and aaSubLedgerDistID > 0 and POSTED = 0) and aaSubLedgerAssignID > 0    delete from AAG20001 where aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID > 0 and POSTED = 0 end     
GO
GRANT EXECUTE ON  [dbo].[aagDelSubLedgerDistForBRVoidTrxns] TO [DYNGRP]
GO
