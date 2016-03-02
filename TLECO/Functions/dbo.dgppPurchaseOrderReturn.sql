SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppPurchaseOrderReturn]  (  @action int,  @SOURCE int,  @DCSTATUS int,  @VENDORID varchar(15),  @DOCTYPE int,  @DOCNUMBR varchar(20),  @POPRCTNM varchar(17),  @MenuID int  )  RETURNS varchar(2000) AS BEGIN   DECLARE @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255),  @OriginID int,  @EncodedVENDORID varchar(255),  @EncodedDOCNUMBR varchar(255),  @EncodedPOPRCTNM varchar(255)    select @FunctionName = 'OpenPORtrn'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedVENDORID = DYNAMICS.dbo.encodeUrlString(rtrim(@VENDORID));  select @EncodedDOCNUMBR = DYNAMICS.dbo.encodeUrlString(rtrim(@DOCNUMBR));  select @EncodedPOPRCTNM = DYNAMICS.dbo.encodeUrlString(rtrim(@POPRCTNM));   if @DCSTATUS = 1   select @OriginID=4   else  select @OriginID=3    select @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +   '&SOURCE=' + ltrim(str(@SOURCE)) +  '&DCSTATUS=' + ltrim(str(@DCSTATUS)) +  '&VENDORID=' + ltrim(@EncodedVENDORID) +  '&DOCTYPE=' + ltrim(str(@DOCTYPE)) +   '&DOCNUMBR=' + ltrim(@EncodedDOCNUMBR) +  '&POPRCTNM=' + ltrim(@EncodedPOPRCTNM) +  '&MenuID=' + ltrim(str(@MenuID)) +  '&OriginID=' + ltrim(str(@OriginID))   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppPurchaseOrderReturn] TO [DYNGRP]
GO
