SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppVendorID]  (  @action int,  @VendorID varchar(15)  )  RETURNS varchar(2000) AS BEGIN   DECLARE @COMPID varchar(5),  @ActionType varchar(15),  @FunctionName varchar(50),  @EncodedVendorID varchar(255),  @URIstring varchar(255)  select @COMPID = DB_NAME()   select @FunctionName = 'OpenVendorID'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedVendorID = DYNAMICS.dbo.encodeUrlString(rtrim(@VendorID));   select @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +  '&VENDORID=' + ltrim(@EncodedVendorID)  RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppVendorID] TO [DYNGRP]
GO
