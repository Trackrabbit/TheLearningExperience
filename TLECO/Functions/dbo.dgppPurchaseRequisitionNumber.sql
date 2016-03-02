SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppPurchaseRequisitionNumber]  (  @action int,  @POPRequisitionNumber varchar(18),  @bHistory int  )  RETURNS varchar(2000) AS BEGIN   DECLARE @COMPID varchar(5),  @ActionType varchar(15),  @FunctionName varchar(50),  @EncodedPOPRequisitionNumber varchar(255),  @URIstring varchar(255)  select @COMPID = DB_NAME()   select @FunctionName = 'OpenReqInq'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'  select @EncodedPOPRequisitionNumber = DYNAMICS.dbo.encodeUrlString(rtrim(@POPRequisitionNumber));   select @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +  '&sReqID=' + ltrim(@EncodedPOPRequisitionNumber) + '&bHistory=' + ltrim(str(@bHistory))   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppPurchaseRequisitionNumber] TO [DYNGRP]
GO
