SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[svcCheckRMAComponentSerialLotQty]  (   @RecType smallint,   @RMANumber char(15),   @Line Numeric(19,5),   @CMPNTSEQ int = 0 ,  @Qty numeric(19,5) output,  @QtyType smallint = 1 ) as  select @Qty = sum(SERLTQTY) from SVC05255 where RETDOCID = @RMANumber and Return_Record_Type = @RecType  and CMPNTSEQ = @CMPNTSEQ and LNSEQNBR = @Line and POSTED = 0 and QTYTYPE = @QtyType select @Qty = isnull(@Qty,0)  return    
GO
GRANT EXECUTE ON  [dbo].[svcCheckRMAComponentSerialLotQty] TO [DYNGRP]
GO
