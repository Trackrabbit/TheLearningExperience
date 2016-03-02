SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppAccountIndex]  (  @action int,  @AccountIndex int  )  RETURNS varchar(2000) AS BEGIN   DECLARE @COMPID varchar(5),  @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255)  select @COMPID = DB_NAME()   select @FunctionName = 'OpenAcctIndx'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +  '&ACTINDX=' + ltrim(str(@AccountIndex))  RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppAccountIndex] TO [DYNGRP]
GO
