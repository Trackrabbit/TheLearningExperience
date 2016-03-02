SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create          procedure [dbo].[aagGetActualDistIDInquiry] @iHdrID int = 0,  @iDispDistID   int = 0,  @iPostedTrx  tinyint = 0,  @iFutureDist tinyint = 0,  @oActualDistID  int = 0 output   as  declare @DistID int,  @Min int,  @Series int  select @DistID = 0,   @Min = 0  Select @Series = SERIES from AAG20000 Where aaSubLedgerHdrID =@iHdrID  If @Series = 3   Begin  select aaSubLedgerHdrID, aaSubLedgerDistID, IDENTITY(int, 1,1) AS DisplayDistID into #newtable1 from AAG20001   where aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID > 0 and  POSTED = @iPostedTrx and aaBrowseType <> 0 and aaBrowseType <> 3  Order by DISTTYPE, SEQNUMBR  select @DistID = aaSubLedgerDistID from #newtable1 where DisplayDistID = abs(@iDispDistID)   End  Else  Begin  select aaSubLedgerHdrID, aaSubLedgerDistID, IDENTITY(int, 1,1) AS DisplayDistID into #newtable3 from AAG20001   where aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID > 0 and  POSTED = @iPostedTrx and aaBrowseType <> 0 and aaBrowseType <> 3  Order by aaSubLedgerDistID   select @DistID = aaSubLedgerDistID from #newtable3 where DisplayDistID = abs(@iDispDistID)   End  select @oActualDistID = @DistID    
GO
GRANT EXECUTE ON  [dbo].[aagGetActualDistIDInquiry] TO [DYNGRP]
GO
