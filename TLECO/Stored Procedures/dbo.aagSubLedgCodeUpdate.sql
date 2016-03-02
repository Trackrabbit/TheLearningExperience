SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagSubLedgCodeUpdate] @iHdrID   int, @iDistID   int, @iAssignID   int, @iClassID   int As begin   set nocount on  declare @SERIES smallint,  @Cnt int   select  @SERIES  = 0,  @Cnt  = 0   if @iClassID = 0 Return 0  select @SERIES = SERIES from AAG20000 where aaSubLedgerHdrID = @iHdrID  if @SERIES = 5 or @SERIES = 12  begin  select @Cnt = count(*) from AAG20003 where aaSubLedgerHdrID = @iHdrID and   aaSubLedgerDistID = @iDistID and   aaSubLedgerAssignID = @iAssignID  end  if @Cnt = 0   begin  Insert into AAG20003 (aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID,aaTrxDimID, aaTrxCodeID, aaCodeErrors)   Select @iHdrID, @iDistID, @iAssignID, aaTrxDimID, aaTrxDimCodeIDDflt, 0  from AAG00202 where aaAcctClassID = @iClassID and aaTrxDimID >=0   and aaTrxDimID not in (select l.aaTrxDimID from AAG20003 l where l.aaSubLedgerHdrID = @iHdrID and l.aaSubLedgerDistID = @iDistID and l.aaSubLedgerAssignID = @iAssignID)  end   set nocount off end    
GO
GRANT EXECUTE ON  [dbo].[aagSubLedgCodeUpdate] TO [DYNGRP]
GO
