SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppRTVNumber]  (  @action int,  @RTV_Number varchar(15),  @RTV_Type varchar(11)  )   RETURNS varchar(2000) AS BEGIN   DECLARE @COMPID varchar(5),  @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255),  @EncodedRTV_Number varchar(255),  @EncodedRTV_Type varchar(255)   select @COMPID = DB_NAME()   select @FunctionName = 'OpenRTVNumber'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedRTV_Number = DYNAMICS.dbo.encodeUrlString(rtrim(@RTV_Number));  select @EncodedRTV_Type = DYNAMICS.dbo.encodeUrlString(rtrim(@RTV_Type));   select @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +   '&RTV_Number=' + ltrim(@EncodedRTV_Number) + '&RTV_Type=' + ltrim(@EncodedRTV_Type)   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppRTVNumber] TO [DYNGRP]
GO
