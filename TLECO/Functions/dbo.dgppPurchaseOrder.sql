SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppPurchaseOrder]  (  @action int,  @SOURCE int,  @DCSTATUS int,  @DOCTYPE int,  @POSTATUS int,  @VENDORID varchar(15),  @PONUMBER varchar(20),  @POPIVCNO varchar(17),  @POPRCTNM varchar(17),  @DOCNUMBR varchar(20),  @SCHEDULE_NUMBER varchar(20),  @VCHRNMBR varchar(20)   )  RETURNS varchar(2000) AS BEGIN   DECLARE @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255),  @EncodedVENDORID varchar(255),  @EncodedPONUMBER varchar(255),  @EncodedDOCTYPE varchar(255)   select @FunctionName = 'OpenPO'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedVENDORID = DYNAMICS.dbo.encodeUrlString(rtrim(@VENDORID));  select @EncodedPONUMBER = DYNAMICS.dbo.encodeUrlString(rtrim(@PONUMBER));  select @EncodedDOCTYPE = DYNAMICS.dbo.encodeUrlString(rtrim(@DOCTYPE));   select @URIstring = '&Act='+@ActionType  + '&Func=' + @FunctionName   + '&POSTATUS=' + ltrim(str(@POSTATUS))   + '&VENDORID=' + ltrim(@EncodedVENDORID)   + '&PONUMBER=' + ltrim(@EncodedPONUMBER)   + '&DOCTYPE=' + ltrim(@EncodedDOCTYPE)   + '&ActID=-1'  + '&MenuID=2'   + '&CurncyView=1'   RETURN(@URIstring)  END   
GO
GRANT EXECUTE ON  [dbo].[dgppPurchaseOrder] TO [DYNGRP]
GO
