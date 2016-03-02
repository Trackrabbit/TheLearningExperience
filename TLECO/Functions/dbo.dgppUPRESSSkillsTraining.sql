SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppUPRESSSkillsTraining]  (  @action int,  @EmployeeId varchar(100)  )  RETURNS varchar(2000) AS BEGIN   DECLARE @COMPID varchar(5),  @ActionType varchar(15),  @FunctionName varchar(50),  @EncodedEmployeeID varchar(255),  @EncodedPayScheduleID varchar(255),  @URIstring varchar(255)  select @COMPID = DB_NAME()   select @FunctionName = 'OpenESSSkills'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'  select @EncodedEmployeeID = DYNAMICS.dbo.encodeUrlString(rtrim(@EmployeeId));   select @URIstring =  '&Act='+@ActionType  + '&Func=' + @FunctionName  + '&sEmpID=' + ltrim(@EncodedEmployeeID)   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppUPRESSSkillsTraining] TO [DYNGRP]
GO
