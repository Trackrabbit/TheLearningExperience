SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[aagSubWorkCodeUpdate]  @iHdrID   int, @iDistID   int, @iAssignID   int, @iClassID   int, @oRequiredFieldEmpty tinyint = 0 output  with encryption as  set transaction isolation level read uncommitted set nocount on  Begin   if @iClassID = 0  Return 0  Insert into AAG20003 (aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID,aaTrxDimID, aaTrxCodeID, aaCodeErrors)   Select @iHdrID, @iDistID, @iAssignID, aaTrxDimID, aaTrxDimCodeIDDflt, 0  from AAG00202 where aaAcctClassID = @iClassID and aaTrxDimID >=0  If (select min(aaTrxDimCodeIDDflt) from AAG00202 where aaAcctClassID = @iClassID and aaTrxDimID >=0) = 0  Set @oRequiredFieldEmpty = 1  Else  Set @oRequiredFieldEmpty = 0 End    
GO
GRANT EXECUTE ON  [dbo].[aagSubWorkCodeUpdate] TO [DYNGRP]
GO
