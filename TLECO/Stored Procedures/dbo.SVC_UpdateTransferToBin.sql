SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_UpdateTransferToBin]  (  @DocNumber char(15),  @Line Int,  @ToLocation char(10),  @ToBin char(15),  @BinOnly tinyint ) As declare @FromLocation char(10), @FromBin char(15) declare @Sequence int declare @Item char(31) declare @Qty numeric(19,5) declare @TrackingOption smallint  select @TrackingOption = ITMTRKOP from SVC00701 left join IV00101 on IV00101.ITEMNMBR = SVC00701.ITEMNMBR where  ORDDOCID = @DocNumber and LNITMSEQ = @Line if @TrackingOption >= 2  begin  declare XBin_record cursor for select SLTSQNUM, TOBIN  from SVC00702 where ORDDOCID = @DocNumber and TRANSLINESEQ = @Line  open XBin_record   fetch next from XBin_record into @Sequence, @FromBin  while @@FETCH_STATUS = 0  begin  update SVC00702 set FROMBIN = @FromBin, TOBIN = @ToBin, STATUS = 4 where  ORDDOCID = @DocNumber and TRANSLINESEQ = @Line and SLTSQNUM = @Sequence  fetch next from XBin_record into  @Sequence, @FromBin  end  deallocate XBin_record  return end  if @BinOnly = 1  begin  update SVC00712 set TOBIN = @ToBin where ORDDOCID = @DocNumber and LNITMSEQ = @Line  return(0)   end  declare XBin_record cursor for select ITEMNMBR, SEQNUMBR, LOCNCODE, TOBIN, QUANTITY  from SVC00712 where ORDDOCID = @DocNumber and LNITMSEQ = @Line open XBin_record   fetch next from XBin_record into @Item, @Sequence, @FromLocation, @FromBin, @Qty  while @@FETCH_STATUS = 0  begin  update SVC00712 set TRNSFLOC = @FromLocation, BIN = @FromBin, LOCNCODE = @ToLocation, TOBIN = @ToBin,  POSTED = 0 where ORDDOCID = @DocNumber and LNITMSEQ = @Line and SEQNUMBR = @Sequence  if exists(select * from IV00112 where ITEMNMBR = @Item and LOCNCODE = @FromLocation and QTYTYPE = 1 and BIN = @FromBin)  update IV00112 set ATYALLOC = ATYALLOC + @Qty where ITEMNMBR = @Item and LOCNCODE = @FromLocation and QTYTYPE = 1 and BIN = @FromBin  else  insert IV00112 select @Item, @FromLocation, @FromBin, 1, 0, @Qty   fetch next from XBin_record into @Item, @Sequence, @FromLocation, @FromBin, @Qty  end  deallocate XBin_record return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_UpdateTransferToBin] TO [DYNGRP]
GO
