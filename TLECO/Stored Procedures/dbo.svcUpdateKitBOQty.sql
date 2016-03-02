SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[svcUpdateKitBOQty]  @RecType smallint,   @DocNumber char(15),   @EquipLine  int,  @Line int  As  declare @QtyBO numeric(19,5), @LineStatus char(3),  @ServiceStatus char(3), @BOStatus char(3)  select @ServiceStatus = SRVSTAT, @BOStatus =Backorder_Status from SVC00998  select @QtyBO = max(QTYBACKO), @LineStatus = min(SRVSTAT) from SVC00203 where  SRVRECTYPE = @RecType AND CALLNBR = @DocNumber AND LINITMTYP = 'P' and  EQPLINE = @EquipLine and LNITMSEQ = @Line AND CMPNTSEQ <> 0 and ITEMUSETYPE not in ('M','L')  if @QtyBO > 0   update SVC00203 with (rowlock)  set QTYBACKO = QTYORDER, ATYALLOC = 0 ,SRVSTAT = @ServiceStatus  where  SRVRECTYPE = @RecType AND CALLNBR = @DocNumber  AND LINITMTYP = 'P' and EQPLINE = @EquipLine and LNITMSEQ = @Line AND CMPNTSEQ = 0 else  update SVC00203 with (rowlock)  set QTYBACKO = 0, ATYALLOC = QTYORDER-QTYSOLD, SRVSTAT = isnull(@LineStatus, @ServiceStatus)  where  SRVRECTYPE = @RecType AND CALLNBR = @DocNumber   AND LINITMTYP = 'P' and EQPLINE = @EquipLine and LNITMSEQ = @Line AND CMPNTSEQ = 0  return (0)    
GO
GRANT EXECUTE ON  [dbo].[svcUpdateKitBOQty] TO [DYNGRP]
GO
