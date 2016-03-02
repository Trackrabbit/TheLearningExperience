SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create proc [dbo].[ivItemCostChangeHistGetNextOrd]  (@sItem char(31) = NULL, @nOrd int output, @iErrorState int=NULL output)  AS   BEGIN  SET nocount on  SELECT @iErrorState = 0 IF @sItem = NULL  BEGIN  SELECT @iErrorState = 21036  RETURN END  SELECT @nOrd =  isnull(MAX(ORD),0) FROM IV00118 WHERE ITEMNMBR = @sItem  IF @nOrd = 0  BEGIN   SELECT @nOrd = 1  END ELSE  BEGIN  SELECT @nOrd = @nOrd + 1  END END    
GO
GRANT EXECUTE ON  [dbo].[ivItemCostChangeHistGetNextOrd] TO [DYNGRP]
GO
