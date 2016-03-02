SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_RTV_CreateTransferBin]  @RTVNumber char(15),  @RTVLine numeric(19,5),  @TransferNumber char(15),  @TransferLine int,  @ToLocation char(10),  @ToBin char(15)  As declare @Item char(31),  @FromLocation char(10),  @FromBin char(15),  @Sequence int declare @Qty numeric(19,5)  declare Bin_record cursor for select SEQNUMBR, ITEMNMBR, LOCCODEB, BIN, QUANTITY from SVC05612 where  RTV_Number = @RTVNumber and RTV_Line = @RTVLine open Bin_record   fetch next from Bin_record into @Sequence, @Item, @FromLocation, @FromBin, @Qty  while @@FETCH_STATUS = 0  begin  exec SVC_Bin_CreateBinWork 2, 0, @TransferNumber, @TransferLine, @Item, @FromLocation, @ToLocation, @FromBin, @ToBin, @Qty  update SVC05612 set TOBIN = @ToBin, LOCNCODE = @ToLocation where RTV_Number = @RTVNumber and RTV_Line = @RTVLine and SEQNUMBR = @Sequence   fetch next from Bin_record into @Sequence, @Item, @FromLocation, @FromBin, @Qty  end deallocate Bin_record  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_RTV_CreateTransferBin] TO [DYNGRP]
GO
