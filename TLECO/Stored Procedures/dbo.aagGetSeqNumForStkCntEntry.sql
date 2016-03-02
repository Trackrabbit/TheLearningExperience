SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE    procedure  [dbo].[aagGetSeqNumForStkCntEntry]  @iStockCountID varchar(30)='',  @iItemNumber varchar(30)='',  @iLocationCode varchar(10)='',  @iBinNumber varchar(20)='',  @oSequenceNumber int out   as  declare @SeqNum int,  @HdrID int,  @ItemNum varchar(30),  @LocCode varchar(10),  @BinNum varchar(20),  @Counter int  if @iStockCountID = '' or @iItemNumber = '' or @iLocationCode = ''  return  Select @HdrID = aaSubLedgerHdrID from AAG20000 where DOCNUMBR = @iStockCountID  if @HdrID = NULL or @HdrID = 0   Begin  Set @oSequenceNumber = 1  Return  End  Declare curIVDist cursor fast_forward for  select ITEMNMBR, LOCNCODE, BINNMBR  from IV10301 where STCKCNTID = @iStockCountID  order by LOCNCODE, BINNMBR, ITEMNMBR  Open curIVDist  Fetch next from curIVDist into @ItemNum, @LocCode, @BinNum  Set @Counter = 1  While @@fetch_status = 0 Begin  if @ItemNum = @iItemNumber and @LocCode = @iLocationCode and @BinNum = @iBinNumber  Break  Fetch next from curIVDist into @ItemNum, @LocCode, @BinNum  Set @Counter = @Counter + 1 End  Close curIVDist Deallocate curIVDist  Set @oSequenceNumber = @Counter    
GO
GRANT EXECUTE ON  [dbo].[aagGetSeqNumForStkCntEntry] TO [DYNGRP]
GO
