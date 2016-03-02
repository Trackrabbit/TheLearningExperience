SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[IVLotUpdateUnitCostForReceipt]  @ItemNumber char(31),   @LocCode char(11),   @QtyType numeric(19,5),   @DateReceived datetime,   @RxSeqNum int,    @NewUnitCost numeric(19,5)  AS  UPDATE IV00300 SET UNITCOST = @NewUnitCost WHERE ITEMNMBR = @ItemNumber AND  LOCNCODE = @LocCode AND  QTYTYPE = @QtyType AND  DATERECD = @DateReceived AND  RCTSEQNM = @RxSeqNum  RETURN    
GO
GRANT EXECUTE ON  [dbo].[IVLotUpdateUnitCostForReceipt] TO [DYNGRP]
GO
