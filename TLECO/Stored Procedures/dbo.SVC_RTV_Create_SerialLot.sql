SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_RTV_Create_SerialLot]  (  @RTV char(15),  @RTVLine numeric(19,5),  @serial_number char(20),   @item_number char(30),   @location_code char(11),   @Bin char(15),   @Vendor char(15),  @customer char(15),   @addresscode char(15),  @original tinyint,  @ExpDate datetime=null,  @MfgDate datetime=null,  @RecDate datetime=null,  @DateSEQ numeric(19,5)=0,  @Qty numeric(19,5)=1,  @RMAreceived tinyint = 0,  @QTYType smallint = 1 ) As declare @LotSequence int declare @item_cost numeric(19,5) declare @EquipID int declare @UserID char(15) declare @MinDate datetime declare @RtnCustomer char(15)  exec smGetMinDate @MinDate output  select @MfgDate = isnull(@MfgDate,@MinDate)  select @ExpDate = isnull(@ExpDate,@MinDate)  select @RecDate = isnull(@RecDate,CONVERT(varchar(10),GETDATE(),102) + ' 00:00:00')  select @UserID = SYSTEM_USER   if @RMAreceived = 1   select @RtnCustomer = RETCSTNR from SVC00998  else  select @RtnCustomer = @customer   if exists(select * from SVC00300 where ITEMNMBR = @item_number and SERLNMBR = @serial_number and CUSTNMBR = @RtnCustomer )  select @EquipID = EQUIPID from SVC00300 where ITEMNMBR = @item_number and SERLNMBR = @serial_number and CUSTNMBR = @RtnCustomer  else  exec SVC_Create_Serial_MSTR @serial_number, @item_number, @RtnCustomer, @addresscode, @UserID, @Vendor, @EquipID output   if not exists(select * from SVC05602 where RTV_Number = @RTV and RTV_Line = @RTVLine  and SERLNMBR = @serial_number and ITEMNMBR = @item_number )  begin   select @LotSequence = isnull(Max(SLTSQNUM),0) + 1 from SVC05602 where RTV_Number = @RTV and RTV_Line = @RTVLine  if exists(select * from IV00200 where ITEMNMBR = @item_number and SERLNMBR = @serial_number)  Begin  insert SVC05602  select @RTV,  @RTVLine,  QTYTYPE,  1,  @LotSequence,  ITEMNMBR,  SERLNMBR,  SERLNMBR,  @EquipID,  ITEMNMBR,  SERLNMBR,  SERLNMBR,  @EquipID,   BIN,  BIN,  UNITCOST,  @original,  DATERECD,  DTSEQNUM,  'RTV',  0,  0,  0,  @MfgDate,  @ExpDate  from IV00200 where ITEMNMBR = @item_number and SERLNMBR = @serial_number   End  else  Begin  insert SVC05602  select @RTV,  @RTVLine,  @QTYType,  @Qty,  @LotSequence,  @item_number,  @serial_number,  '',  '',  @item_number,  @serial_number,  @serial_number,   '',  isnull(@Bin,''),  isnull(@Bin,''),  0,  @original,  @RecDate,  @DateSEQ,  'RTV',  0,  0,  0,  @MfgDate,  @ExpDate  End  end  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_RTV_Create_SerialLot] TO [DYNGRP]
GO
