SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure  [dbo].[aagUpdateTRXQTYForSubLedger]  @iHdrID int = 0,  @iDistID int = 0,  @iTRXQTY numeric(19,5) = 0,  @oQtyModified tinyint = 0 output   As  Declare @OldQty numeric(19,5)  Set @oQtyModified = 0  If exists(select top 1 aaSubLedgerHdrID from AAG20001 where aaSubLedgerHdrID = @iHdrID and  aaSubLedgerDistID = @iDistID and  TRXQTY <> @iTRXQTY)  Begin  Select @OldQty = TRXQTY from AAG20001 where aaSubLedgerHdrID = @iHdrID and  aaSubLedgerDistID = @iDistID  If (@OldQty <> @iTRXQTY )   set @oQtyModified = 1   update AAG20001 set TRXQTY = @iTRXQTY  where aaSubLedgerHdrID = @iHdrID and  aaSubLedgerDistID = @iDistID and  TRXQTY <> @iTRXQTY  update AAG20001 set TRXQTY = @iTRXQTY  where aaSubLedgerHdrID = @iHdrID and  aaSubLedgerDistID = @iDistID +1 and  TRXQTY <> @iTRXQTY  End    
GO
GRANT EXECUTE ON  [dbo].[aagUpdateTRXQTYForSubLedger] TO [DYNGRP]
GO
