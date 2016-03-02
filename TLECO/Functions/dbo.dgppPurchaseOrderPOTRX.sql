SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppPurchaseOrderPOTRX]  (  @action int,  @SOURCE int,  @DCSTATUS int,  @POSTATUS int,  @VENDORID varchar(15),  @PONUMBER varchar(20),  @ActionID int,  @MenuID int,  @CurrencyView int  )  RETURNS varchar(2000) AS BEGIN   DECLARE @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255),  @EncodedVENDORID varchar(255),  @EncodedPONUMBER varchar(255)    select @FunctionName = 'OpenPOPOTrx'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedVENDORID = DYNAMICS.dbo.encodeUrlString(rtrim(@VENDORID));  select @EncodedPONUMBER = DYNAMICS.dbo.encodeUrlString(rtrim(@PONUMBER));   select @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +   '&SOURCE=' + ltrim(str(@SOURCE)) +  '&DCSTATUS=' + ltrim(str(@DCSTATUS)) +  '&POSTATUS=' + ltrim(str(@POSTATUS)) +  '&VENDORID=' + ltrim(@EncodedVENDORID) +  '&PONUMBER=' + ltrim(@EncodedPONUMBER) +  '&ActID=' + ltrim(str(@ActionID)) +  '&MenuID=' + ltrim(str(@MenuID)) +  '&CurncyView=' + ltrim(str(@CurrencyView))   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppPurchaseOrderPOTRX] TO [DYNGRP]
GO
