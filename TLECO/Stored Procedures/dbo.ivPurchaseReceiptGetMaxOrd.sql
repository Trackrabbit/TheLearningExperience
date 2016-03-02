SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create proc [dbo].[ivPurchaseReceiptGetMaxOrd]  (@cItem char(30)=NULL, @nRxSeqNum int output, @iErrorState int=NULL output)  AS   BEGIN  select     @nRxSeqNum = 0.0,  @iErrorState = 0  set nocount on  if @cItem=NULL  begin  select @iErrorState = 21036  return end  select @nRxSeqNum = max(RCTSEQNM) from   (  SELECT RCTSEQNM = isnull(MAX(RCTSEQNM),0) FROM IV10200 WHERE ITEMNMBR = @cItem    union all   SELECT RCTSEQNM = isnull(MAX(RCTSEQNM),0) FROM IV10201 WHERE ITEMNMBR = @cItem  ) as IVGroup   return   end     
GO
GRANT EXECUTE ON  [dbo].[ivPurchaseReceiptGetMaxOrd] TO [DYNGRP]
GO
