SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[svcUpdateDepotKitBOQty]  @RecType smallint,   @WO char(15),   @Line int  As  declare @QtyBO numeric(19,5), @LineStatus char(3)  select @QtyBO = max(QTYBACKO), @LineStatus = min(WOSTAT) from SVC06101 where WORECTYPE = @RecType and WORKORDNUM = @WO   and LNITMSEQ = @Line AND LINITMTYP = 'P'AND CMPNTSEQ <> 0  if @QtyBO > 0   update SVC06101 with (rowlock)  set QTYBACKO = QTYORDER, ATYALLOC = 0 where WORECTYPE = @RecType and WORKORDNUM = @WO   and LNITMSEQ = @Line AND LINITMTYP = 'P' AND CMPNTSEQ = 0 else  update SVC06101 with (rowlock)  set QTYBACKO = 0, ATYALLOC = QTYORDER-QTYSOLD, WOSTAT = @LineStatus where  WORECTYPE = @RecType and WORKORDNUM = @WO   and LNITMSEQ = @Line AND LINITMTYP = 'P' AND CMPNTSEQ = 0  return (0)    
GO
GRANT EXECUTE ON  [dbo].[svcUpdateDepotKitBOQty] TO [DYNGRP]
GO
