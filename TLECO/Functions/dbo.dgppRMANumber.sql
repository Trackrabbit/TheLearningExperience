SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppRMANumber]  (  @action int,  @RETDOCID varchar(15),  @Return_Record_Type int  )   RETURNS varchar(2000) AS BEGIN   DECLARE @COMPID varchar(5),  @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255),  @EncodedRETDOCID varchar(255)   select @COMPID = DB_NAME()   select @FunctionName = 'OpenRMANumber'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedRETDOCID = DYNAMICS.dbo.encodeUrlString(rtrim(@RETDOCID));   select @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +   '&RETDOCID=' + ltrim(@EncodedRETDOCID) + '&Return_Record_Type=' + ltrim(str(@Return_Record_Type))   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppRMANumber] TO [DYNGRP]
GO
