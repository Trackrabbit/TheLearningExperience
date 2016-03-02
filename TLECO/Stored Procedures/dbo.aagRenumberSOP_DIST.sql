SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create              procedure [dbo].[aagRenumberSOP_DIST] @iHdrID int, @oStatus smallint = NULL out as declare  @retCode int,  @DistID int,  @SeqNum bigint,  @NextDistID int,  @TempDistID int,  @DistIDINSPos int ,  @ID int ,  @Cnt int,  @Cnt1 int  select  @retCode = 0,   @DistID = 0,  @SeqNum = 0,  @Cnt  = 0,  @Cnt1 = 0  begin   Select @Cnt = count(*)  from AAG20001 where aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID > 0 and  ( DISTTYPE  = 14 or  DISTTYPE = 15  )  and aaFutureDist = 1  Select @Cnt1=  count(*)  from AAG20001 where aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID > 0 and  ( DISTTYPE  = 14 or  DISTTYPE = 15  )  and aaFutureDist = 0    if  (@Cnt > 0  or   @Cnt1 > 0)  and (@Cnt = @Cnt1)   return  else   begin  Update AAG20003   Set aaSubLedgerDistID = aaSubLedgerDistID * -1  Where aaSubLedgerHdrID = @iHdrID  Update AAG20002   Set aaSubLedgerDistID = aaSubLedgerDistID * -1  Where aaSubLedgerHdrID = @iHdrID  Update AAG20001   Set aaSubLedgerDistID = aaSubLedgerDistID * -1  Where aaSubLedgerHdrID = @iHdrID  DECLARE Cur1 cursor fast_forward FOR SELECT aaSubLedgerDistID   FROM AAG20001   Where aaSubLedgerHdrID = @iHdrID  Order by aaFutureDist , SEQNUMBR,  aaSubLedgerDistID desc   OPEN Cur1   FETCH NEXT FROM Cur1 INTO @DistID  select @ID = 1  while @@FETCH_STATUS = 0  Begin   Update AAG20003   Set aaSubLedgerDistID = @ID  Where aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID = @DistID   Update AAG20002   Set aaSubLedgerDistID = @ID  Where aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID = @DistID   Update AAG20001   Set aaSubLedgerDistID = @ID  Where aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID = @DistID   set @ID = @ID + 1   FETCH NEXT FROM Cur1 INTO @DistID   End   close Cur1  deallocate Cur1   end end    
GO
GRANT EXECUTE ON  [dbo].[aagRenumberSOP_DIST] TO [DYNGRP]
GO