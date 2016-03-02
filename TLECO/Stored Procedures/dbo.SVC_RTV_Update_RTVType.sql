SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_RTV_Update_RTVType] (  @RTVNumber char(15),  @Line numeric(19,5),  @RTVType char(11) ) AS declare @old_RTVType char(11) declare @ReturnLocation char(10) declare @Vendor char(15) declare @ReturnStatus char(3) declare @ReceivedStatus char(3) declare @ReadyToCloseStatus char(3) declare @Item char(30) declare @ReturnPath smallint declare @PARTAMOUNT numeric(19,2),  @LABORAMOUNT numeric(19,2),  @TRAVELAMOUNT numeric(19,2),  @MISCAMOUNT numeric(19,2),  @RTVrouting smallint, @oldRTVrouting smallint declare @Location char(10), @Qty numeric(19,5), @UoM char(8), @QtyInBase numeric(19,5)  select @ReturnStatus = RTV_Return_Status, @ReturnLocation = LOCNCODE, @RTVrouting = RTV_Routing from SVC05003 where RTV_Type = @RTVType if @Line = 0 begin  declare RTVline  cursor for select RTV_Line, RTV_Type, VENDORID, ITEMNMBR, UOFM, QUANTITY, LOCCODEB from SVC05601 where RTV_Number  = @RTVNumber and RTV_Status = 1   open RTVline  fetch next from RTVline into @Line , @old_RTVType, @Vendor, @Item, @UoM, @Qty, @Location  while @@FETCH_STATUS = 0  BEGIN  if @old_RTVType <> @RTVType  begin  select @oldRTVrouting = RTV_Routing from SVC05003 where RTV_Type = @old_RTVType  exec SVC_RMA_Get_Vendor_Reimburse @Vendor,@Item,@RTVType,'',  @PARTAMOUNT OUTPUT,@LABORAMOUNT OUTPUT, @TRAVELAMOUNT OUTPUT,@MISCAMOUNT OUTPUT   update SVC05601 with (rowlock) set RTV_Type = @RTVType,  RTV_Return_Status = @ReturnStatus,  LOCNCODE = @ReturnLocation,  Part_Price= @PARTAMOUNT, Labor_Price = @LABORAMOUNT, Expense_Price = @MISCAMOUNT, Travel_Price = @TRAVELAMOUNT,  Originating_Part_Price= @PARTAMOUNT, Originating_Labor_Price = @LABORAMOUNT, Originating_ExpensePrice = @MISCAMOUNT, Originating_Travel_Price = @TRAVELAMOUNT  where RTV_Number = @RTVNumber and RTV_Line = @Line  exec SVC_Set_RTV_Dist @RTVNumber, @Line,'',0,0,0,0,0   exec SVC_Get_QtyInBase @Item,@UoM,1,@QtyInBase OUTPUT   select @Qty = @Qty * @QtyInBase   if @oldRTVrouting = 3 and @RTVrouting <> 3   exec SVC_Allocate_Quantity @Item, @Location, @Qty  else if @oldRTVrouting <> 3 and @RTVrouting = 3   begin  select @Qty = (-1) * @Qty  exec SVC_Allocate_Quantity @Item, @Location, @Qty  end  end  fetch next from RTVline into @Line , @old_RTVType, @Vendor, @Item, @UoM, @Qty, @Location  END  deallocate RTVline end else begin  select @Vendor= VENDORID, @Item = ITEMNMBR, @UoM = UOFM, @Qty = QUANTITY, @Location = LOCCODEB, @old_RTVType = RTV_Type from SVC05601 where RTV_Number  = @RTVNumber and RTV_Line = @Line   select @oldRTVrouting = RTV_Routing from SVC05003 where RTV_Type = @old_RTVType  exec SVC_RMA_Get_Vendor_Reimburse @Vendor,@Item,@RTVType,'',  @PARTAMOUNT OUTPUT,@LABORAMOUNT OUTPUT, @TRAVELAMOUNT OUTPUT,@MISCAMOUNT OUTPUT   update SVC05601 with (rowlock) set RTV_Type = @RTVType,  RTV_Return_Status = @ReturnStatus,  LOCNCODE = @ReturnLocation,  Part_Price= @PARTAMOUNT, Labor_Price = @LABORAMOUNT, Expense_Price = @MISCAMOUNT, Travel_Price = @TRAVELAMOUNT,  Originating_Part_Price= @PARTAMOUNT, Originating_Labor_Price = @LABORAMOUNT, Originating_ExpensePrice = @MISCAMOUNT, Originating_Travel_Price = @TRAVELAMOUNT  where RTV_Number = @RTVNumber and RTV_Line = @Line  exec SVC_Set_RTV_Dist @RTVNumber, @Line,'',0,0,0,0,0   if @oldRTVrouting = 3 and @RTVrouting <> 3   exec SVC_Allocate_Quantity @Item, @Location, @Qty  else if @oldRTVrouting <> 3 and @RTVrouting = 3   begin  select @Qty = (-1) * @Qty  exec SVC_Allocate_Quantity @Item, @Location, @Qty  end end  exec SVC_RTV_Set_HDR_Values @RTVNumber  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RTV_Update_RTVType] TO [DYNGRP]
GO