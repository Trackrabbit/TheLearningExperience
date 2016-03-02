SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Set_RMA_Dist] ( @RMANumber as char(15),  @RecordType as smallint,  @LineNumber as numeric(19,5),  @ProcessLine as numeric(19,5),   @LineType as char(3), @DistType as smallint,  @Price numeric (19,3),@OrigPrice numeric (19,3),  @Cost numeric (19,3),@OrigCost numeric (19,3),  @iType smallint,   @UserCOGSAcct int,    @CMPNTSEQ int = 0 )   AS declare @SEQNUMBR integer declare @AccountIndex integer declare @oldAccountIndex1 integer declare @oldAccountIndex2 integer declare @oldAccountIndex4 integer declare @oldAccountIndex5 integer declare @SalesIndex integer, @newSalesIndex integer declare @ARIndex integer, @newARIndex integer declare @COGSIndex integer, @newCOGSIndex integer declare @InvIndex integer, @newInvIndex integer declare @ScrapIndex integer declare @RepairIndex integer declare @CurrencyIndex smallint declare @Customer char(15) declare @UseAccountFrom smallint declare @Item char(31),@ReturnItem char(31) declare @QtyInBase numeric(19,5),@UOM char(10) declare @RMAType char(10) declare @ReturnPath smallint declare @UnitPrice numeric (19,2),@OrigUnitPrice numeric (19,2) declare @RepairPrice numeric (19,2),@OrigRepairPrice numeric (19,2) declare @Qty numeric(19,5) declare @PostDate datetime declare @FromService tinyint declare @CUSTOWN smallint declare @Received tinyint declare @Location char(11),@Transfer char(15) declare @CallNumber char(10)  declare @CallRecType smallint declare @ReturnSalesIndex integer declare @ServiceType char(11) declare @OpenOrHistory smallint declare @ServiceCOGSIndex integer declare @User char(15)  declare @NonIV tinyint declare @ItemType smallint declare @QtyType smallint  select @User = SYSTEM_USER  set @UserCOGSAcct = isnull(@UserCOGSAcct,0)  select @UseAccountFrom = USEACFRM from SOP40100  select @Item = ITEMNMBR, @Customer = Bill_To_Customer, @RMAType = RETTYPE, @FromService = SVC_RMA_From_Service,  @CurrencyIndex = CURRNIDX, @ReturnItem = Return_Item_Number, @CUSTOWN = CUSTOWN, @UOM = UOFM,  @Received = Received, @Transfer = ORDDOCID, @CallNumber = CALLNBR, @CallRecType = SRVRECTYPE,  @Location = Return_Location_Code  from SVC05200 where RETDOCID = @RMANumber and LNSEQNBR = @LineNumber and svcRMAComponentSeq = @CMPNTSEQ select @ItemType = ITEMTYPE from IV00101 where ITEMNMBR = @Item if @ItemType > 0   select @NonIV  = 0 else  select @NonIV = 1  if exists(select * from SVC05015 where RETDOCID = @RMANumber and LNSEQNBR = @LineNumber and USERID = @User)  select @Item = Return_Item_Number from SVC05015 where RETDOCID = @RMANumber and LNSEQNBR = @LineNumber and USERID = @User  select @ReturnPath = RETPATH, @SalesIndex = SVC_Sales_Return_Index, @COGSIndex = SVC_COGS_Index,  @ScrapIndex = SVC_Scrap_Index, @RepairIndex = SVC_Repair_Sales_Index, @QtyType = QTYTYPE  from SVC05501 where RETTYPE = @RMAType  if @DistType = 0   delete from SVC05030 where RETDOCID = @RMANumber and Return_Record_Type = @RecordType  and LNSEQNBR = @LineNumber and POSTED = 0 else  delete from SVC05030  where RETDOCID = @RMANumber and Return_Record_Type=@RecordType and LINITMTYP = @LineType  and SVC_Process_SEQ_Number = @ProcessLine and LNSEQNBR = @LineNumber and POSTED = 0 and CMPNTSEQ = @CMPNTSEQ  if @CUSTOWN = 1 and @LineType <> 'R'  return   if @Price <= 0   begin  if @Received = 0  begin  select @UnitPrice = UNITPRCE,@OrigUnitPrice = ORUNTPRC,@Qty = QUANTITY,  @RepairPrice = Repair_Price, @OrigRepairPrice = Originating_Repair_Price  from SVC05200 where RETDOCID = @RMANumber and LNSEQNBR = @LineNumber and svcRMAComponentSeq = @CMPNTSEQ  exec SVC_Get_QtyInBase @Item,@UOM,1,@QtyInBase OUTPUT  end   else  begin  select @UnitPrice = SVC_Return_Price,@OrigUnitPrice = Originating_Return_Price,@Qty = Return_QTY,@UOM = Return_U_Of_M,  @RepairPrice = Repair_Price, @OrigRepairPrice = Originating_Repair_Price, @Item = Return_Item_Number  from SVC05200 where RETDOCID = @RMANumber and LNSEQNBR = @LineNumber and svcRMAComponentSeq = @CMPNTSEQ  exec SVC_Get_QtyInBase @Item,@UOM,1,@QtyInBase OUTPUT  end  select @UnitPrice = @UnitPrice * @Qty   select @OrigUnitPrice = @OrigUnitPrice * @Qty   end else  select @UnitPrice = @Price, @OrigUnitPrice = @OrigPrice,  @RepairPrice = @Price, @OrigRepairPrice = @OrigPrice if @Cost <= 0   begin  select @Cost = RETCOST,@OrigCost = Originating_Return_Cost,@Qty = QUANTITY  from SVC05200 where RETDOCID = @RMANumber and LNSEQNBR = @LineNumber and svcRMAComponentSeq = @CMPNTSEQ  if @LineType = 'S'  select @Qty = SVC_Process_QTY from SVC05210  where RETDOCID = @RMANumber and LNSEQNBR = @LineNumber and SVC_Process_SEQ_Number = @ProcessLine and CMPNTSEQ = @CMPNTSEQ   select @Cost = @Cost * @Qty, @OrigCost = @OrigCost * @Qty  end  if @CallNumber > '' and @FromService = 0   begin  if (exists(select * from SVC00200 where SRVRECTYPE = @CallRecType and CALLNBR = @CallNumber))  select @ServiceType = SRVTYPE from SVC00200 where CALLNBR = @CallNumber and SRVRECTYPE = @CallRecType  else  select @ServiceType = SRVTYPE from SVC30200 where CALLNBR = @CallNumber and SRVRECTYPE = @CallRecType  select @ReturnSalesIndex = SVC_Sales_Return_Index, @ServiceCOGSIndex = SVC_COGS_Index_Part  from SVC00920 where SRVTYPE = @ServiceType  if @ServiceCOGSIndex > 0  select @COGSIndex = @ServiceCOGSIndex  end if @ReturnSalesIndex > 0   select @SalesIndex = @ReturnSalesIndex  if @NonIV = 1  begin  select @InvIndex = ACTINDX from SY01100 where SERIES=3 and SEQNUMBR = 2400   select @COGSIndex = ACTINDX from SY01100 where SERIES=3 and SEQNUMBR = 200   end else  begin   select  @InvIndex = case  when @QtyType = 1 then IVIVINDX  when @QtyType = 2 then IVRETIDX  when @QtyType = 3 then IVINUSIX  when @QtyType = 4 then IVINSVIX  when @QtyType = 5 then IVDMGIDX  else 0  end  from IV00101 where ITEMNMBR = @Item  if @UseAccountFrom = 1  select @InvIndex = RMIVACC from RM00101 where CUSTNMBR = @Customer  if @InvIndex = 0 or @InvIndex is null  select @InvIndex = ACTINDX from SY01100 where SERIES=3 and SEQNUMBR = 900  end  if @LineType = 'R'  select @SalesIndex = @RepairIndex if @SalesIndex = 0 or @SalesIndex is null  begin  if @UseAccountFrom = 1  select @SalesIndex = RMSORACC from RM00101 where CUSTNMBR = @Customer  else  select @SalesIndex = IVSLRNIX from IV00101 where ITEMNMBR = @Item  end if @SalesIndex = 0 or @SalesIndex is null  select @SalesIndex = ACTINDX from SY01100 where SERIES=3 and SEQNUMBR = 1200   if @LineType = 'S' begin  select @COGSIndex = @UserCOGSAcct  if @COGSIndex = 0  select @COGSIndex = @ScrapIndex end  if @COGSIndex = 0 or @COGSIndex is null  begin  if @UseAccountFrom = 1  select @COGSIndex = RMCOSACC from RM00101 where CUSTNMBR = @Customer  else  select @COGSIndex = IVCOGSIX from IV00101 where ITEMNMBR = @Item  end if @COGSIndex = 0 or @COGSIndex is null  select @COGSIndex = ACTINDX from SY01100 where SERIES=3 and SEQNUMBR = 200  select @ARIndex = RMARACC from RM00101 where CUSTNMBR = @Customer if @ARIndex = 0 or @ARIndex is null  select @ARIndex = ACTINDX from SY01100 where SERIES=3 and SEQNUMBR = 100 exec SVC_LocationSegmentReplace @InvIndex, @Location, @newInvIndex output  if @UseAccountFrom = 0   begin  exec SVC_LocationSegmentReplace @COGSIndex, @Location, @newCOGSIndex output   exec SVC_LocationSegmentReplace @SalesIndex, @Location, @newSalesIndex output   end else  select @newCOGSIndex = @COGSIndex, @newSalesIndex = @SalesIndex  select @newARIndex = @ARIndex  exec smGetMinDate @PostDate output select @SEQNUMBR = 16384  if @LineType > ''  BEGIN  if @LineType = 'S'  BEGIN  exec SVC_Dist_Get_SEQ_RMA  @RMANumber,@RecordType,@LineNumber,@LineType,4,@SEQNUMBR output  insert SVC05030  select   @RecordType,  @RMANumber,  @LineNumber,  @LineType,  @SEQNUMBR,  @ProcessLine,  4,   '',  isnull(@newInvIndex,0),  0,0,    @Cost,@OrigCost,   isnull(@CurrencyIndex,0),  '',  0,  @PostDate,  @CMPNTSEQ   exec SVC_Dist_Get_SEQ_RMA  @RMANumber,@RecordType,@LineNumber,@LineType,5,@SEQNUMBR output  insert SVC05030  select   @RecordType,  @RMANumber,  @LineNumber,  @LineType,  @SEQNUMBR,  @ProcessLine,  5,   '',  isnull(@newCOGSIndex,0),  @Cost,@OrigCost,    0,0,   isnull(@CurrencyIndex,0),  '',  0,  @PostDate,  @CMPNTSEQ  END  if @LineType = 'R' and @RepairPrice > 0  BEGIN  exec SVC_Dist_Get_SEQ_RMA  @RMANumber,@RecordType,@LineNumber,@LineType,1,@SEQNUMBR output  insert SVC05030  select   @RecordType,  @RMANumber,  @LineNumber,  @LineType,  @SEQNUMBR,  @ProcessLine,  1,   '',  isnull(@newSalesIndex,0),  0,0,    @RepairPrice,@OrigRepairPrice,   isnull(@CurrencyIndex,0),  '',  0,  @PostDate,  @CMPNTSEQ   exec SVC_Dist_Get_SEQ_RMA  @RMANumber,@RecordType,@LineNumber,@LineType,2,@SEQNUMBR output  insert SVC05030  select   @RecordType,  @RMANumber,  @LineNumber,  @LineType,  @SEQNUMBR,  @ProcessLine,  2,   '',  isnull(@newARIndex,0),  @RepairPrice,@OrigRepairPrice,    0,0,   isnull(@CurrencyIndex,0),  '',  0,  @PostDate,  @CMPNTSEQ  END END   else   BEGIN  if @ReturnPath > 1 and @CMPNTSEQ = 0   BEGIN  exec SVC_Dist_Get_SEQ_RMA  @RMANumber,@RecordType,@LineNumber,@LineType,1,@SEQNUMBR output  insert SVC05030  select   @RecordType,  @RMANumber,  @LineNumber,  @LineType,  @SEQNUMBR,  @ProcessLine,  1,   '',  isnull(@newSalesIndex,0),  isnull(@UnitPrice,0),isnull(@OrigUnitPrice,0),    0,0,   isnull(@CurrencyIndex,0),  '',  0,  @PostDate,  @CMPNTSEQ   exec SVC_Dist_Get_SEQ_RMA  @RMANumber,@RecordType,@LineNumber,@LineType,2,@SEQNUMBR output  insert SVC05030  select   @RecordType,  @RMANumber,  @LineNumber,  @LineType,  @SEQNUMBR,  @ProcessLine,  2,   '',  isnull(@newARIndex,0),  0,0,    isnull(@UnitPrice,0),isnull(@OrigUnitPrice,0),   isnull(@CurrencyIndex,0),  '',  0,  @PostDate,  @CMPNTSEQ  END   if @FromService = 0 and (@Transfer is null or @Transfer = '') and @ItemType <> 3  BEGIN  exec SVC_Dist_Get_SEQ_RMA  @RMANumber,@RecordType,@LineNumber,@LineType,4,@SEQNUMBR output  insert SVC05030  select   @RecordType,  @RMANumber,  @LineNumber,  @LineType,  @SEQNUMBR,  @ProcessLine,  4,   '',  isnull(@newInvIndex,0),  isnull(@Cost,0),isnull(@OrigCost,0),    0,0,   isnull(@CurrencyIndex,0),  '',  0,  @PostDate,  @CMPNTSEQ   exec SVC_Dist_Get_SEQ_RMA  @RMANumber,@RecordType,@LineNumber,@LineType,5,@SEQNUMBR output  insert SVC05030  select   @RecordType,  @RMANumber,  @LineNumber,  @LineType,  @SEQNUMBR,  @ProcessLine,  5,   '',  isnull(@newCOGSIndex,0),  0,0,    isnull(@Cost,0),isnull(@OrigCost,0),   isnull(@CurrencyIndex,0),  '',  0,  @PostDate,  @CMPNTSEQ  END END   return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Set_RMA_Dist] TO [DYNGRP]
GO