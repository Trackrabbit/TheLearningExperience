SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[svcSetDepotKitItemCost] ( @RecType smallint,  @WO char(15),  @Line int, @KitUnitCost numeric(19,5) output, @ExtUnitCost numeric(19,5) output )  as declare @CompSequence int declare @UserID char(15), @qty numeric (19,5), @UnitCost numeric(19,5)  if exists(select * from SVC06101 where WORECTYPE = @RecType and WORKORDNUM = @WO and LNITMSEQ = @Line AND LINITMTYP = 'P'and CMPNTSEQ = 0)  BEGIN if (select QTYORDER from SVC06101 where WORECTYPE = @RecType and WORKORDNUM = @WO and LNITMSEQ = @Line AND LINITMTYP = 'P'and CMPNTSEQ = 0)=0  return  select @ExtUnitCost = 0  declare SelectKitLines cursor local fast_forward   for   select CMPNTSEQ, QTYORDER, UNITCOST from SVC06101 where WORECTYPE = @RecType   and WORKORDNUM = @WO and LNITMSEQ = @Line AND LINITMTYP = 'P'AND CMPNTSEQ<>0  open SelectKitLines  fetch next from SelectKitLines into @CompSequence, @qty, @UnitCost  while @@fetch_status = 0   begin  select @ExtUnitCost = @ExtUnitCost + (@UnitCost * @qty)   fetch next from SelectKitLines into @CompSequence, @qty, @UnitCost   end   close SelectKitLines  deallocate SelectKitLines   update SVC06101 with (rowlock)  set EXTDCOST = @ExtUnitCost, @KitUnitCost = @ExtUnitCost / QTYORDER, UNITCOST = @ExtUnitCost / QTYORDER  where WORECTYPE = @RecType and WORKORDNUM = @WO and LNITMSEQ = @Line AND LINITMTYP = 'P'and CMPNTSEQ = 0  END return     
GO
GRANT EXECUTE ON  [dbo].[svcSetDepotKitItemCost] TO [DYNGRP]
GO
