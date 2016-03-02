SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppAssetIndex]  (  @action int,  @ASSETINDEX int  )  RETURNS varchar(2000) AS BEGIN   DECLARE @COMPID varchar(5),  @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255)  select @COMPID = DB_NAME()   select @FunctionName = 'OpenAssetIndex'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +   '&ASSETINDEX=' + ltrim(str(@ASSETINDEX)) + '&SORTBY=2' + '&ASSETID=&ASSETIDSUF=0'   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppAssetIndex] TO [DYNGRP]
GO
