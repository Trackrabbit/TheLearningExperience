SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE proc [dbo].[sopTrxUpdatePostingStatus] (@SopType smallint=NULL, @SopNumber char(21)=NULL, @PostingStatus smallint=NULL, @LogicalOR smallint=NULL, @iErrorState int=NULL output)  AS  begin  SET nocount on  SELECT @iErrorState = 0 IF @SopType=NULL or @SopNumber=NULL or @PostingStatus=NULL or @LogicalOR=NULL BEGIN  SELECT @iErrorState = 21036  RETURN END  IF @LogicalOR > 0    UPDATE SOP10100 SET PSTGSTUS = PSTGSTUS | @PostingStatus  WHERE SOP10100.SOPNUMBE = @SopNumber AND SOP10100.SOPTYPE = @SopType  ELSE   UPDATE SOP10100 SET PSTGSTUS =  @PostingStatus  WHERE SOP10100.SOPNUMBE = @SopNumber AND SOP10100.SOPTYPE = @SopType  end    
GO
GRANT EXECUTE ON  [dbo].[sopTrxUpdatePostingStatus] TO [DYNGRP]
GO
