SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Create_Cont_From_SOP]  @SOP_Type smallint,  @SOP_Number char(21),  @UserID char(15),  @ContractNumber char(11) output  As declare @ContractLine integer declare @Qty numeric(19,5) declare @LotQty numeric(19,5) declare @ItemNumber char(31) declare @SerialNumber char(21) declare @CreateHDR tinyint declare @Line integer declare @CustomerNumber char(15) declare @AddressCode char(15) declare @ContractCustomer char(15) declare @ContractAddress char(15) declare @SOPLine integer declare @SOPComp integer declare @EquipID integer declare @PaidContract tinyint declare @at_least_one tinyint, @bNonIV tinyint declare @DropShip smallint   if exists(select * from SVC00660 where SOPTYPE = @SOP_Type and SOPNUMBE = @SOP_Number) BEGIN  select @at_least_one = 0  select @CreateHDR = 1  select @ContractLine = 100  select @CustomerNumber = CUSTNMBR, @AddressCode = PRSTADCD  from SOP30200 where SOPTYPE = @SOP_Type and SOPNUMBE = @SOP_Number  select @PaidContract = SVC_Paid_Contract, @ContractCustomer = CUSTNMBR, @ContractAddress = ADRSCODE  from SVC00660 where SOPTYPE = @SOP_Type and SOPNUMBE = @SOP_Number  declare SOP_Lines_cursor cursor for select LNITMSEQ,CMPNTSEQ,QUANTITY,ITEMNMBR, PRSTADCD, DROPSHIP  from SOP30300  where SOPTYPE = @SOP_Type and SOPNUMBE = @SOP_Number and CMPNTSEQ = 0   open SOP_Lines_cursor  FETCH NEXT FROM SOP_Lines_cursor INTO @SOPLine,@SOPComp,@Qty,@ItemNumber, @AddressCode, @DropShip  while @@FETCH_STATUS = 0  BEGIN  if @Qty > 0   BEGIN  if exists(select * from IV00101 where ITEMNMBR = @ItemNumber)  select @bNonIV = 0  else  select @bNonIV = 1   if @bNonIV = 1 or ((select SVC_Contractible from SVC00951 where ITEMNMBR = @ItemNumber) = 1)  BEGIN  if @CreateHDR = 1  BEGIN  select @CreateHDR = 0  select @at_least_one = 1  exec SVC_Create_Cont_HDR_From_SOP @SOP_Type,@SOP_Number,@ContractNumber OUTPUT  END  if (select ITMTRKOP from IV00101 where ITEMNMBR = @ItemNumber) > 1 and @DropShip = 0  BEGIN  declare Serial_cursor cursor for select SERLTNUM , SERLTQTY  from SOP10201  where SOPTYPE = @SOP_Type and SOPNUMBE = @SOP_Number and LNITMSEQ = @SOPLine  open Serial_cursor  FETCH NEXT FROM Serial_cursor INTO @SerialNumber, @LotQty  while @@FETCH_STATUS = 0  BEGIN  select @EquipID = EQUIPID from SVC00300 where  SERLNMBR = @SerialNumber and ITEMNMBR = @ItemNumber and CUSTNMBR = @CustomerNumber  if @EquipID = 0 or @EquipID is null  exec SVC_Create_Serial_MSTR @SerialNumber,@ItemNumber,@CustomerNumber,  @AddressCode,@UserID,'',@EquipID OUTPUT   if @ContractCustomer <> @CustomerNumber  Begin  exec SVC_Update_Equip_Customer @SerialNumber,@ItemNumber, @ContractCustomer, @ContractAddress, @EquipID output  exec SVC_Create_Serial_Audit @EquipID,@CustomerNumber,@SerialNumber,@ItemNumber,'Changed via Contract from SOP',@UserID  select @AddressCode = @ContractAddress  End   select @Qty = @LotQty   exec SVC_Create_Cont_Line_From_SOP @ContractNumber,  @ContractLine,  @Qty,  @EquipID,  @ContractCustomer,  @SerialNumber,  @ItemNumber,  @AddressCode,  @SOP_Type,  @SOP_Number,  @SOPLine,  @SOPComp  select @ContractLine = @ContractLine + 100  select @EquipID = 0  FETCH NEXT FROM Serial_cursor INTO @SerialNumber, @LotQty  END  deallocate Serial_cursor  END  else  BEGIN  exec SVC_Create_Cont_Line_From_SOP @ContractNumber,  @ContractLine,  @Qty,  0,  @ContractCustomer,  '',  @ItemNumber,  '',  @SOP_Type,  @SOP_Number,  @SOPLine,  @SOPComp  select @ContractLine = @ContractLine + 100  END  END  END  FETCH NEXT FROM SOP_Lines_cursor INTO @SOPLine,@SOPComp,@Qty,@ItemNumber, @AddressCode, @DropShip  END  deallocate SOP_Lines_cursor  if @PaidContract = 1 and @at_least_one = 1  BEGIN  exec SVC_Post_Contract_Invoice 2,@ContractNumber,@SOP_Type,@SOP_Number  END  if @at_least_one = 1  BEGIN  update SVC00661 with (rowlock) set CONSTS = 2, CONTNBR = @ContractNumber  where SOPTYPE = @SOP_Type and SOPNUMBE = @SOP_Number  END  delete from SVC00660 where SOPTYPE = @SOP_Type and SOPNUMBE = @SOP_Number END return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Create_Cont_From_SOP] TO [DYNGRP]
GO