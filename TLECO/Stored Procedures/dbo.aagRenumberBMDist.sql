SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagRenumberBMDist] @aaSubLedgerHdrID int as begin  declare @aaSubLedgerDistID int,  @newdist int   select  @aaSubLedgerDistID =0,  @newdist  =0   Update AAG20003  Set aaSubLedgerDistID = aaSubLedgerDistID * -1  where aaSubLedgerHdrID = @aaSubLedgerHdrID  Update AAG20002  Set aaSubLedgerDistID = aaSubLedgerDistID * -1  where aaSubLedgerHdrID = @aaSubLedgerHdrID  Update AAG20001  Set aaSubLedgerDistID = aaSubLedgerDistID * -1  where aaSubLedgerHdrID = @aaSubLedgerHdrID   declare CREN cursor for  select aaSubLedgerDistID from AAG20001  Where aaSubLedgerHdrID = @aaSubLedgerHdrID  order by SEQNUMBR  open CREN  fetch next from CREN into @aaSubLedgerDistID  while @@fetch_status = 0  begin  select @newdist = @newdist + 1  Update AAG20003  Set aaSubLedgerDistID = @newdist  Where aaSubLedgerHdrID = @aaSubLedgerHdrID and aaSubLedgerDistID = @aaSubLedgerDistID  Update AAG20002  Set aaSubLedgerDistID = @newdist  Where aaSubLedgerHdrID = @aaSubLedgerHdrID and aaSubLedgerDistID = @aaSubLedgerDistID   Update AAG20001  Set aaSubLedgerDistID = @newdist  Where aaSubLedgerHdrID = @aaSubLedgerHdrID and aaSubLedgerDistID = @aaSubLedgerDistID   fetch next from CREN into @aaSubLedgerDistID  end   close CREN  deallocate CREN end    
GO
GRANT EXECUTE ON  [dbo].[aagRenumberBMDist] TO [DYNGRP]
GO
