SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppServiceRecordType]  (  @action int,  @CALLNBR varchar(11),  @SRVRECTYPE int  )  RETURNS varchar(2000) AS BEGIN   DECLARE @COMPID varchar(5),  @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255),  @EncodedCALLNBR varchar(255)   select @COMPID = DB_NAME()   select @FunctionName = 'OpenServiceRecordType'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedCALLNBR = DYNAMICS.dbo.encodeUrlString(rtrim(@CALLNBR));   select @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +   '&SRVRECTYPE=' + ltrim(str(@SRVRECTYPE)) + '&CALLNBR=' + ltrim(@EncodedCALLNBR)   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppServiceRecordType] TO [DYNGRP]
GO
