SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create   procedure [dbo].[aagGetDisplayDistID] @iHdrID int = 0,  @iDistID    int = 0,  @iPostedTrx  tinyint = 0,  @oDisplayDistID int = 0 output,  @ioDisplayIDTemp varchar(30) = null  as  declare @DistID int  select @DistID = 0   select aaSubLedgerHdrID, aaSubLedgerDistID, IDENTITY(int, 1,1) AS DisplayDistID into #newtable1 from AAG20001   where aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID > 0 and  POSTED = @iPostedTrx and aaBrowseType <> 0 and aaBrowseType <> 3  Order by aaSubLedgerDistID select @DistID = DisplayDistID from #newtable1 where aaSubLedgerDistID = @iDistID  select @oDisplayDistID = @DistID    
GO
GRANT EXECUTE ON  [dbo].[aagGetDisplayDistID] TO [DYNGRP]
GO
