SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create          procedure [dbo].[aagGetDisplayDistIDInquiry] @iHdrID int = 0,  @iDistID    int = 0,  @iPostedTrx  tinyint = 0,  @oDisplayDistID int = 0 output,  @ioDisplayIDTemp varchar(30) = null  as  declare @DistID int,  @Series int  select  @DistID = 0   Select @Series = SERIES from AAG20000 Where aaSubLedgerHdrID =@iHdrID  If @Series = 3   Begin  select aaSubLedgerHdrID, aaSubLedgerDistID, IDENTITY(int, 1,1) AS DisplayDistID into #newtable1 from AAG20001   where aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID > 0 and  POSTED = @iPostedTrx and aaBrowseType <> 0 and aaBrowseType <> 3  Order by DISTTYPE, SEQNUMBR  select @DistID = DisplayDistID from #newtable1 where aaSubLedgerDistID = @iDistID   End  Else  Begin  select aaSubLedgerHdrID, aaSubLedgerDistID, IDENTITY(int, 1,1) AS DisplayDistID into #newtable3 from AAG20001   where aaSubLedgerHdrID = @iHdrID and aaSubLedgerDistID > 0 and  POSTED = @iPostedTrx and aaBrowseType <> 0 and aaBrowseType <> 3  Order by aaSubLedgerDistID  select @DistID = DisplayDistID from #newtable3 where aaSubLedgerDistID = @iDistID   End  select @oDisplayDistID = @DistID    
GO
GRANT EXECUTE ON  [dbo].[aagGetDisplayDistIDInquiry] TO [DYNGRP]
GO
