SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppOpenPMTrxNmbr]  (  @action int,  @BusObj char(30)  )  RETURNS varchar(2000) AS BEGIN   DECLARE @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255)   select @FunctionName = 'OpenPMTransaction'   if @action=1  select @ActionType = 'Open_for_Workflow'  else  select @ActionType = 'Open_for_Workflow'   select @URIstring =  '&Act='+@ActionType  + '&Func=' + @FunctionName  + '&sBusObjKey=' + ltrim(@BusObj)   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppOpenPMTrxNmbr] TO [DYNGRP]
GO
