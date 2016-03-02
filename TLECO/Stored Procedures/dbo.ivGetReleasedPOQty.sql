SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[ivGetReleasedPOQty]   @ItemNumber  Char(30),  @LocationCode Char(10),  @ReleasedPOQty Decimal(19,5) Output AS  DECLARE @sql_statement as varchar(8000),  @QtyOnOrder Decimal(19,5),  @QtyShipped  Decimal(19,5)  select @QtyOnOrder = isnull(sum(QTYUNCMTBASE + QTYCMTBASE),0) from POP10110   where ITEMNMBR = @ItemNumber and LOCNCODE = @LocationCode and POLNESTA in (2,3) and PONUMBER <> ''  select @QtyShipped = isnull(sum(QTYSHPPD),0) from POP10500   where ITEMNMBR = @ItemNumber and TRXLOCTN = @LocationCode and PONUMBER <> '' and Status = 0 and POPTYPE in (1,3)  set @ReleasedPOQty = @QtyOnOrder - @QtyShipped    
GO
GRANT EXECUTE ON  [dbo].[ivGetReleasedPOQty] TO [DYNGRP]
GO
