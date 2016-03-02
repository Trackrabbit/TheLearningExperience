SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create   procedure [dbo].[aagGetActualDistID] @iHdrID int = 0,  @iDispDistID   int = 0,  @iPostedTrx  tinyint = 0,  @iFutureDist tinyint = 0,  @oActualDistID  int = 0 output   as  declare @DistID int,  @Min int  select @DistID = 0,   @Min = 0  select aaSubLedgerHdrID, aaSubLedgerDistID, IDENTITY(int, 1,1) AS DisplayDistID into #newtable1 from AAG20001   where aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID > 0 and  POSTED = @iPostedTrx and aaBrowseType <> 0 and aaBrowseType <> 3  Order by aaSubLedgerDistID  select @DistID = aaSubLedgerDistID from #newtable1 where DisplayDistID = abs(@iDispDistID)   select @oActualDistID = @DistID    
GO
GRANT EXECUTE ON  [dbo].[aagGetActualDistID] TO [DYNGRP]
GO
