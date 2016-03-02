SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppPTETimesheet]  (  @action int,  @PTETimesheetNumber varchar(100),  @bHistory int  )  RETURNS varchar(2000) AS BEGIN   DECLARE @COMPID varchar(5),  @ActionType varchar(15),  @FunctionName varchar(50),  @EncodedPTETimesheetNumber varchar(255),  @URIstring varchar(255)  select @COMPID = DB_NAME()   select @FunctionName = 'OpenPTETs'   if @action=1  select @ActionType = 'OpenWindow'  else  select @ActionType = 'OpenWindow'  select @EncodedPTETimesheetNumber = DYNAMICS.dbo.encodeUrlString(rtrim(@PTETimesheetNumber));   select @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +  '&sPTETsNo=' + ltrim(@EncodedPTETimesheetNumber) + '&bHistory=' + ltrim(str(@bHistory))   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppPTETimesheet] TO [DYNGRP]
GO
