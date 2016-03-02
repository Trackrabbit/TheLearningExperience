SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[svcSetRMAKitItemCost] (@RecType smallint, @RETDOCID char(15), @Line as numeric(19,5),  @KitUnitCost numeric(19,5) output, @OrigKitUnitCost numeric(19,5) output, @ExtUnitCost numeric(19,5) output, @OrigExtUnitCost numeric(19,5) output  )  as declare @CompSequence int declare @UserID char(15), @qty numeric (19,5), @UnitCost numeric(19,5), @OrigUnitCost numeric(19,5), @ReturnCost numeric(19,5), @OrigReturnCost numeric(19,5) declare @QtyInBase numeric(19,5), @UOM CHAR(10), @item CHAR(30) declare @DECPLCUR smallint, @ODECPLCU smallint  if exists(select * FROM SVC05200 where RETDOCID = @RETDOCID and Return_Record_Type = @RecType  and LNSEQNBR = @Line and svcRMAComponentSeq = 0 and QUANTITY > 0)  BEGIN  select  @OrigExtUnitCost = 0, @ExtUnitCost = 0, @DECPLCUR = DECPLCUR, @ODECPLCU = ODECPLCU FROM SVC05200 where RETDOCID = @RETDOCID and Return_Record_Type = @RecType  and LNSEQNBR = @Line and svcRMAComponentSeq = 0  declare SelectKitLines cursor local fast_forward   for   select svcRMAComponentSeq, QUANTITY, RETCOST, Originating_Return_Cost, UNITCOST, ORUNTCST,  ITEMNMBR, UOFM from SVC05200   where RETDOCID = @RETDOCID and Return_Record_Type = @RecType and LNSEQNBR = @Line and svcRMAComponentSeq <>0  open SelectKitLines  fetch next from SelectKitLines into @CompSequence, @qty, @ReturnCost, @OrigReturnCost, @UnitCost, @OrigUnitCost, @item,@UOM  while @@fetch_status = 0   begin  select @OrigExtUnitCost = @OrigExtUnitCost + (@OrigUnitCost * @qty ),  @ExtUnitCost = @ExtUnitCost + (@UnitCost * @qty)   fetch next from SelectKitLines into @CompSequence, @qty, @ReturnCost, @OrigReturnCost, @UnitCost, @OrigUnitCost, @item,@UOM   end   close SelectKitLines  deallocate SelectKitLines  update SVC05200 with (rowlock)  set OREXTCST= round(@OrigExtUnitCost,@ODECPLCU), SVC_Extended_Return_Cost = round(@ExtUnitCost,@DECPLCUR),   EXTDCOST = round(@ExtUnitCost,@DECPLCUR), SVC_Orig_Ext_Return_Cost = round(@OrigExtUnitCost,@ODECPLCU),  Originating_Replace_Cost = round(@OrigExtUnitCost / QUANTITY, @ODECPLCU),Replace_Cost = round(@ExtUnitCost / QUANTITY,@DECPLCUR),  UNITCOST =round(@ExtUnitCost / QUANTITY,@DECPLCUR), ORUNTCST = round(@OrigExtUnitCost / QUANTITY, @ODECPLCU),  @OrigKitUnitCost = round(@OrigExtUnitCost / QUANTITY, @ODECPLCU),  @KitUnitCost = round(@ExtUnitCost / QUANTITY,@DECPLCUR)  where   RETDOCID = @RETDOCID and Return_Record_Type = @RecType and LNSEQNBR = @Line and svcRMAComponentSeq = 0 and QUANTITY <> 0  END return     
GO
GRANT EXECUTE ON  [dbo].[svcSetRMAKitItemCost] TO [DYNGRP]
GO
