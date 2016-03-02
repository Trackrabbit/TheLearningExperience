SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE    procedure  [dbo].[aagSetSiteIDinSubLedger]  @iHdrID int = 0,  @iSeqNum int = 0,  @iLocCodeFrom varchar(15),  @iLocCodeTo varchar(15),  @oModifiedFrom tinyint = 0 output,  @oModifiedTo tinyint = 0 output   as  declare @SiteMstrID int,  @SiteMstrID2 int  if @iLocCodeTo = ''   Begin  If exists(select top 1 aaSubLedgerHdrID from AAG20001 where aaSubLedgerHdrID = @iHdrID and  SEQNUMBR = @iSeqNum and  TRXLOCTN <> @iLocCodeFrom)  Begin  update AAG20001 set TRXLOCTN = @iLocCodeFrom  where aaSubLedgerHdrID = @iHdrID and  SEQNUMBR = @iSeqNum and  TRXLOCTN <> @iLocCodeFrom  set @oModifiedFrom = 1  End  End else  Begin   If exists(select top 1 aaSubLedgerHdrID from AAG20001 where aaSubLedgerHdrID = @iHdrID and  SEQNUMBR = @iSeqNum and  TRXLOCTN <> @iLocCodeFrom)  set @oModifiedFrom = 1  If exists(select top 1 aaSubLedgerHdrID from AAG20001 where aaSubLedgerHdrID = @iHdrID and  SEQNUMBR = @iSeqNum and  TRNSTLOC <> @iLocCodeTo)  set @oModifiedTo = 1  If @oModifiedFrom = 1 or @oModifiedTo = 1  Begin  update AAG20001 set TRXLOCTN = @iLocCodeFrom, TRNSTLOC = @iLocCodeTo  where aaSubLedgerHdrID = @iHdrID and  SEQNUMBR = @iSeqNum and  (TRXLOCTN <> @iLocCodeFrom or TRNSTLOC <> @iLocCodeTo)  End  End    
GO
GRANT EXECUTE ON  [dbo].[aagSetSiteIDinSubLedger] TO [DYNGRP]
GO
