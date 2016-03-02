SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppEmployeeID]  (  @action int,  @EmployeeID varchar(15)  )  RETURNS varchar(2000) AS BEGIN   DECLARE @COMPID varchar(5),  @ActionType varchar(15),  @FunctionName varchar(50),  @EncodedEmployeeID varchar(255),  @URIstring varchar(255)  select @COMPID = DB_NAME()   select @FunctionName = 'OpenEmpID'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedEmployeeID = DYNAMICS.dbo.encodeUrlString(rtrim(@EmployeeID));   select @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +  '&EMPLOYID=' + ltrim(@EncodedEmployeeID)  RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppEmployeeID] TO [DYNGRP]
GO
