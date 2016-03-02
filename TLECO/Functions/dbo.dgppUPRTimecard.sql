SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppUPRTimecard]  (  @action int,  @EmployeeId varchar(100),  @PayScheduleId varchar(100),  @Year varchar(100),  @PeriodId varchar(100),  @bHistory int  )  RETURNS varchar(2000) AS BEGIN   DECLARE @COMPID varchar(5),  @ActionType varchar(15),  @FunctionName varchar(50),  @EncodedEmployeeID varchar(255),  @EncodedPayScheduleID varchar(255),  @URIstring varchar(255)  select @COMPID = DB_NAME()   select @FunctionName = 'OpenUPRTc'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'  select @EncodedEmployeeID = DYNAMICS.dbo.encodeUrlString(rtrim(@EmployeeId));  select @EncodedPayScheduleID = DYNAMICS.dbo.encodeUrlString(rtrim(@PayScheduleId));   select @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +  '&sEmpID=' + ltrim(@EncodedEmployeeID) +  '&sPsID=' + ltrim(@EncodedPayScheduleID) +  '&nYear=' + ltrim(@Year) +  '&nPerID=' + ltrim(@PeriodId) + '&bHistory=' + ltrim(str(@bHistory))   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppUPRTimecard] TO [DYNGRP]
GO
