SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Allocate_and_Backorder]  (@ItemNumber char(31),  @LocationCode char(11),  @QtyOrder numeric(19,5),  @SourceDoc char(11),  @SourceDocType smallint,  @LineItemSeq int,  @ItemDesc char(100),  @UofM char(9),  @StationID char(11),  @OfficeID char(11),  @QtyAlloc numeric(19,5) output,  @QtyBO numeric(19,5) output,  @CMPNTSEQ int = 0 ) As declare @PrevQtyAvail numeric(19,5) declare @MinDate datetime declare @TechID char(10)  exec smGetMinDate @MinDate output exec SVC_Add_Item_To_Site @ItemNumber, @LocationCode select @PrevQtyAvail = QTYONHND - ATYALLOC  from IV00102  where ITEMNMBR = @ItemNumber and  LOCNCODE = @LocationCode and  RCRDTYPE = 2 if @PrevQtyAvail >= @QtyOrder  BEGIN  select @QtyAlloc = @QtyOrder  select @QtyBO = 0  END ELSE  BEGIN  select @QtyAlloc = @PrevQtyAvail  select @QtyBO = @QtyOrder - @PrevQtyAvail  if @SourceDoc > '' and @SourceDocType = 1   begin  select @TechID = TECHID from SVC00203 where SRVRECTYPE = 2 and CALLNBR = @SourceDoc and EQPLINE =1   and CMPNTSEQ = @CMPNTSEQ and LNITMSEQ = @LineItemSeq and LINITMTYP = 'P'  if @TechID = '' or @TechID is null  select @TechID = TECHID from SVC00200 where SRVRECTYPE = 2 and CALLNBR = @SourceDoc  end   insert SVC00710  select @SourceDoc,@SourceDocType,@ItemNumber,@LineItemSeq,@ItemDesc,  @LocationCode,0,'',isnull(@TechID,''),@QtyBO,@UofM,0,0,@StationID,@OfficeID,0,0,'',0,'','',  '',0,'',@MinDate,0,  '', @CMPNTSEQ   END  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Allocate_and_Backorder] TO [DYNGRP]
GO
