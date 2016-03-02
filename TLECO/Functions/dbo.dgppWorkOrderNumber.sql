SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppWorkOrderNumber]  (  @action int,  @WORKORDNUM varchar(11),  @WORECTYPE int  )   RETURNS varchar(2000) AS BEGIN   DECLARE @COMPID varchar(5),  @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255),  @EncodedWORKORDNUM varchar(255)   select @COMPID = DB_NAME()   select @FunctionName = 'OpenWorkOrderNumber'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedWORKORDNUM = DYNAMICS.dbo.encodeUrlString(rtrim(@WORKORDNUM));   select @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +   '&WORKORDNUM=' + ltrim(@EncodedWORKORDNUM) + '&WORECTYPE=' + ltrim(str(@WORECTYPE))   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppWorkOrderNumber] TO [DYNGRP]
GO
