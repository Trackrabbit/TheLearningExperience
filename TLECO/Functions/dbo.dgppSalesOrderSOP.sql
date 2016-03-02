SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppSalesOrderSOP]  (  @action int,  @DCSTATUS int,  @SOURCE int,  @SOPNUMBE varchar(20),  @SOPTYPE int,  @ModuleID int,  @CurrencyView int,  @CallerID int  )  RETURNS varchar(2000) AS BEGIN   DECLARE @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255),  @EncodedSOPNUMBE varchar(255)   select @FunctionName = 'OpenSOP'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedSOPNUMBE = DYNAMICS.dbo.encodeUrlString(rtrim(@SOPNUMBE));   select @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +   '&SOURCE=' + ltrim(str(@SOURCE)) +  '&DCSTATUS=' + ltrim(str(@DCSTATUS)) +  '&SOPNUMBE=' + ltrim(@EncodedSOPNUMBE) +  '&SOPTYPE=' + ltrim(str(@SOPTYPE)) +  '&ModuleID=' + ltrim(str(@ModuleID)) +  '&CurncyView=' + ltrim(str(@CurrencyView)) +  '&CallID=' + ltrim(str(@CallerID))   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppSalesOrderSOP] TO [DYNGRP]
GO
