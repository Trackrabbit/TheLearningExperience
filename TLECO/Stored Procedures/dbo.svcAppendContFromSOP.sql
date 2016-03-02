SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[svcAppendContFromSOP]  @SOP_Type smallint,  @SOP_Number char(21),  @ContractNumber char(11),  @UserID char(15)  As declare @ContractLine numeric(19,5) declare @Qty numeric(19,5) declare @LotQty numeric(19,5) declare @ItemNumber char(31) declare @SerialNumber char(21)  declare @Line integer declare @CustomerNumber char(15) declare @AddressCode char(15) declare @ContractCustomer char(15) declare @ContractAddress char(15) declare @SOPLine integer declare @SOPComp integer declare @EquipID integer declare @PaidContract tinyint declare @at_least_one tinyint, @bNonIV tinyint declare @AppendStartDate datetime, @AppendBillStartDate datetime  if exists(select * from SVC00660 where SOPTYPE = @SOP_Type and SOPNUMBE = @SOP_Number) BEGIN  select @at_least_one = 0  select @CustomerNumber = CUSTNMBR, @AddressCode = PRSTADCD  from SOP30200 where SOPTYPE = @SOP_Type and SOPNUMBE = @SOP_Number  select @PaidContract = SVC_Paid_Contract, @ContractCustomer = CUSTNMBR, @AppendStartDate = STRTDATE, @AppendBillStartDate = BILSTRT  from SVC00660 where SOPTYPE = @SOP_Type and SOPNUMBE = @SOP_Number  update SVC00601 with (rowlock) set OrigDiscountNext = 0 where CONTNBR = @ContractNumber and OrigDiscountNext = -1   declare SOP_Lines_cursor cursor for select LNITMSEQ,CMPNTSEQ,QUANTITY,ITEMNMBR, PRSTADCD  from SOP30300  where SOPTYPE = @SOP_Type and SOPNUMBE = @SOP_Number and CMPNTSEQ = 0   open SOP_Lines_cursor  FETCH NEXT FROM SOP_Lines_cursor INTO @SOPLine,@SOPComp,@Qty,@ItemNumber, @AddressCode  while @@FETCH_STATUS = 0  BEGIN  if @Qty > 0   BEGIN  if exists(select * from IV00101 where ITEMNMBR = @ItemNumber)  select @bNonIV = 0  else  select @bNonIV = 1   if @bNonIV = 1 or ((select SVC_Contractible from SVC00951 where ITEMNMBR = @ItemNumber) = 1)  BEGIN  select @at_least_one = 1  if (select ITMTRKOP from IV00101 where ITEMNMBR = @ItemNumber) > 1  BEGIN  declare Serial_cursor cursor for select SERLTNUM , SERLTQTY  from SOP10201  where SOPTYPE = @SOP_Type and SOPNUMBE = @SOP_Number and LNITMSEQ = @SOPLine  open Serial_cursor  FETCH NEXT FROM Serial_cursor INTO @SerialNumber, @LotQty  while @@FETCH_STATUS = 0  BEGIN  select @EquipID = EQUIPID from SVC00300 where  SERLNMBR = @SerialNumber and ITEMNMBR = @ItemNumber and CUSTNMBR = @CustomerNumber  if @EquipID = 0 or @EquipID is null  exec SVC_Create_Serial_MSTR @SerialNumber,@ItemNumber,@CustomerNumber,  @AddressCode,@UserID,'',@EquipID OUTPUT  select @ContractLine = isnull(max(LNSEQNBR),100) + 100 from SVC00601 where CONSTS = 2 and CONTNBR = @ContractNumber  select @Qty = @LotQty   exec svcCreateAppendContractLine @ContractNumber,  @ContractLine,  @AppendStartDate,  @AppendBillStartDate,  @Qty,  @EquipID,  @ContractCustomer,  @SerialNumber,  @ItemNumber,  @AddressCode,  @SOP_Type,  @SOP_Number,  @SOPLine,  @SOPComp  select @EquipID = 0  FETCH NEXT FROM Serial_cursor INTO @SerialNumber, @LotQty  END  deallocate Serial_cursor  END   else   BEGIN  select @ContractLine = isnull(max(LNSEQNBR),100) + 100 from SVC00601 where CONSTS = 2 and CONTNBR = @ContractNumber  exec svcCreateAppendContractLine @ContractNumber,  @ContractLine,  @AppendStartDate,  @AppendBillStartDate,  @Qty,  0,  @ContractCustomer,  '',  @ItemNumber,  '',  @SOP_Type,  @SOP_Number,  @SOPLine,  @SOPComp   END  END  END  FETCH NEXT FROM SOP_Lines_cursor INTO @SOPLine,@SOPComp,@Qty,@ItemNumber, @AddressCode  END  deallocate SOP_Lines_cursor  if @PaidContract = 1 and @at_least_one = 1  BEGIN  exec SVC_Post_Contract_Invoice 2,@ContractNumber,@SOP_Type,@SOP_Number  END  delete from SVC00660 where SOPTYPE = @SOP_Type and SOPNUMBE = @SOP_Number END return    
GO
GRANT EXECUTE ON  [dbo].[svcAppendContFromSOP] TO [DYNGRP]
GO
