SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE proc [dbo].[ivTrxUpdatePostingStatus] (@IVDocType smallint=NULL, @IVDocNumber char(21)=NULL, @PostingStatus smallint=NULL, @LogicalOR smallint=NULL, @iErrorState int=NULL output)  AS  begin  SET nocount on  SELECT @iErrorState = 0 IF  @IVDocType=NULL or   @IVDocNumber=NULL or   @PostingStatus=NULL or   @LogicalOR=NULL BEGIN  SELECT @iErrorState = 21036  RETURN END  IF @LogicalOR > 0    UPDATE IV10000 SET PSTGSTUS = PSTGSTUS | @PostingStatus  WHERE IV10000.IVDOCNBR = @IVDocNumber AND IV10000.IVDOCTYP = @IVDocType  ELSE   UPDATE IV10000 SET PSTGSTUS =  @PostingStatus  WHERE IV10000.IVDOCNBR = @IVDocNumber AND IV10000.IVDOCTYP = @IVDocType  end    
GO
GRANT EXECUTE ON  [dbo].[ivTrxUpdatePostingStatus] TO [DYNGRP]
GO
