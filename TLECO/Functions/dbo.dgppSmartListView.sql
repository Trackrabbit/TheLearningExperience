SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppSmartListView]  (  @action int,  @BusObj char(30)  )  RETURNS varchar(2000) AS BEGIN   DECLARE @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255)   select @FunctionName = 'OpenSmartListView'   if @action=1  select @ActionType = 'OpenWindow'  else  select @ActionType = 'OpenWindow'   select @URIstring =  '&Act='+@ActionType  + '&Func=' + @FunctionName  + '&sBusObjKey=' + ltrim(@BusObj)   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppSmartListView] TO [DYNGRP]
GO
