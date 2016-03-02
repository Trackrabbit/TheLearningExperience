SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppCustomerID]  (  @action int,  @CustomerNumber varchar(15)  )  RETURNS varchar(2000) AS BEGIN   DECLARE @COMPID varchar(5),  @ActionType varchar(15),  @FunctionName varchar(50),  @EncodedCustomerNumber varchar(255),  @URIstring varchar(255)  select @COMPID = DB_NAME()   select @FunctionName = 'OpenCustNmbr'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedCustomerNumber = DYNAMICS.dbo.encodeUrlString(rtrim(@CustomerNumber));   select @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +  '&CUSTNMBR=' + ltrim(@EncodedCustomerNumber)  RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppCustomerID] TO [DYNGRP]
GO
