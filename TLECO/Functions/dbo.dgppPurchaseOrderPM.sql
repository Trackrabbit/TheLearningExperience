SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppPurchaseOrderPM]  (  @action int,  @SOURCE int,  @DCSTATUS int,  @DOCTYPE int,  @VENDORID varchar(15),  @DOCNUMBR varchar(20),  @SCHEDULE_NUMBER varchar(20),  @Status int,  @VCHRNMBR varchar(20),  @CurrencyView int,  @CallerID int,  @GroupBox int  )  RETURNS varchar(2000) AS BEGIN   DECLARE @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255),  @EncodedVENDORID varchar(255),  @EncodedDOCNUMBER varchar(255),  @EncodedSCHEDULE_NUMBER varchar(255)    select @FunctionName = 'OpenPOPM'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedVENDORID = DYNAMICS.dbo.encodeUrlString(rtrim(@VENDORID));  select @EncodedDOCNUMBER = DYNAMICS.dbo.encodeUrlString(rtrim(@DOCNUMBR));  select @EncodedSCHEDULE_NUMBER = DYNAMICS.dbo.encodeUrlString(rtrim(@SCHEDULE_NUMBER));   select @URIstring = '&Act='+@ActionType+'&Funce=' + @FunctionName +   '&SOURCE=' + ltrim(str(@SOURCE)) +  '&DCSTATUS=' + ltrim(str(@DCSTATUS)) +  '&DOCTYPE=' + ltrim(str(@DOCTYPE)) +   '&VENDORID=' + ltrim(@EncodedVENDORID) +  '&DOCNUMBR=' + ltrim(@EncodedDOCNUMBER) +  '&SCHEDULE_NUMBER=' + ltrim(@EncodedSCHEDULE_NUMBER) +  '&Status=' + ltrim(str(@Status)) +  '&VCHRNMBR=' + ltrim(@EncodedDOCNUMBER) +  '&CurncyView=' + ltrim(str(@CurrencyView)) +  '&CallID=' + ltrim(str(@CallerID)) +  '&GROUPBOX=' + ltrim(str(@GroupBox))   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppPurchaseOrderPM] TO [DYNGRP]
GO
