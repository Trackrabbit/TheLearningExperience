SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[aagSubLedgerDistDelete]  @aaSubLedgerHdrID  int, @aaSubLedgerDistID int, @Opt int   with encryption as  set transaction isolation level read uncommitted set nocount on  begin  if @Opt = 0    begin  delete from AAG20001 where aaSubLedgerHdrID = @aaSubLedgerHdrID and  aaSubLedgerDistID = @aaSubLedgerDistID  delete from AAG20002 where aaSubLedgerHdrID = @aaSubLedgerHdrID and  aaSubLedgerDistID = @aaSubLedgerDistID  and aaSubLedgerAssignID > 0   delete from AAG20003 where aaSubLedgerHdrID = @aaSubLedgerHdrID and  aaSubLedgerDistID = @aaSubLedgerDistID  and aaSubLedgerAssignID > 0  and aaTrxDimID > 0   end   if @Opt = 1   begin  delete from AAG20001 where aaSubLedgerHdrID = @aaSubLedgerHdrID and  aaSubLedgerDistID >0  delete from AAG20002 where aaSubLedgerHdrID = @aaSubLedgerHdrID and  aaSubLedgerDistID >0  and aaSubLedgerAssignID > 0   delete from AAG20003 where aaSubLedgerHdrID = @aaSubLedgerHdrID and aaSubLedgerDistID >0  and aaSubLedgerAssignID > 0  and aaTrxDimID > 0   end   if @Opt = 2   begin  delete from AAG20000 where aaSubLedgerHdrID = @aaSubLedgerHdrID  delete from AAG20001 where aaSubLedgerHdrID = @aaSubLedgerHdrID and  aaSubLedgerDistID >0  delete from AAG20002 where aaSubLedgerHdrID = @aaSubLedgerHdrID and  aaSubLedgerDistID >0  and aaSubLedgerAssignID > 0   delete from AAG20003 where aaSubLedgerHdrID = @aaSubLedgerHdrID and aaSubLedgerDistID >0  and aaSubLedgerAssignID > 0  and aaTrxDimID > 0   end  end    
GO
GRANT EXECUTE ON  [dbo].[aagSubLedgerDistDelete] TO [DYNGRP]
GO
