SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Bin_UpdateXferRMAQty]  (  @ORDDOCID char(15),  @TRANSLINESEQ integer,  @Qty numeric(19,5) ) As declare @RMA char(15), @RMALine numeric(19,5) declare @OldQty numeric(19,5) declare @Location char(10) declare @Item char(30) declare @Bin char(15)  select @RMA = RETDOCID, @RMALine = LNSEQNBR from SVC00701   where ORDDOCID = @ORDDOCID and LNITMSEQ = @TRANSLINESEQ select @OldQty = QUANTITY, @Item = ITEMNMBR, @Location = TRNSFLOC, @Bin = BIN  from SVC00712 where ORDDOCID = @ORDDOCID AND LNITMSEQ = @TRANSLINESEQ update SVC00712 set QUANTITY = @Qty where ORDDOCID = @ORDDOCID AND LNITMSEQ = @TRANSLINESEQ update SVC05212 set QUANTITY = @Qty  where Return_Record_Type = 1 and  LNSEQNBR = @RMALine and  RETDOCID = @RMA  return (0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Bin_UpdateXferRMAQty] TO [DYNGRP]
GO
