SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Bin_UpdateRTVToBin]  (  @RTVNumber char(15),  @RTVLine numeric(19,5),  @ToLocation char(10),  @ToBin char(15) ) As declare @Item char(31) declare @Qty numeric(19,5) declare @TrackingOption smallint declare @TransferNumber char(15) declare @TransferLine int  if @ToBin > ''  update SVC05612 set TOBIN = @ToBin where RTV_Number = @RTVNumber and RTV_Line = @RTVLine else  begin  select @TransferNumber = Transfer_Reference, @TransferLine = TRANSLINESEQ, @TrackingOption = ITMTRKOP   from SVC05601 where RTV_Number = @RTVNumber and RTV_Line = @RTVLine  if @TrackingOption = 1  select @ToLocation = LOCNCODE, @ToBin = TOBIN from SVC00712 where ORDDOCID = @TransferNumber and LNITMSEQ = @TransferLine  else  select @ToBin = TOBIN from SVC00702 where ORDDOCID = @TransferNumber and TRANSLINESEQ = @TransferLine  if @ToBin > ''  begin  if @TrackingOption = 1  begin  if exists(select * from SVC05612 where RTV_Number = @RTVNumber and RTV_Line = @RTVLine)  update SVC05612 set TOBIN = @ToBin, LOCNCODE = @ToLocation where RTV_Number = @RTVNumber and RTV_Line = @RTVLine  end  else  update SVC05602 set TOBIN = @ToBin where RTV_Number = @RTVNumber and RTV_Line = @RTVLine  end  end return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Bin_UpdateRTVToBin] TO [DYNGRP]
GO
