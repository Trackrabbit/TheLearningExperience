SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create  procedure [dbo].[aagDeleteAABMHdr]  @aaSubLedgerHdrID int as begin  delete AAG20000 where aaSubLedgerHdrID = @aaSubLedgerHdrID  delete AAG20001 where aaSubLedgerHdrID = @aaSubLedgerHdrID  delete AAG20002 where aaSubLedgerHdrID = @aaSubLedgerHdrID  delete AAG20003 where aaSubLedgerHdrID = @aaSubLedgerHdrID end    
GO
GRANT EXECUTE ON  [dbo].[aagDeleteAABMHdr] TO [DYNGRP]
GO
