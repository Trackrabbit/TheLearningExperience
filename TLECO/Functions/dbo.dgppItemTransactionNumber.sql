SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppItemTransactionNumber]  (  @action int,  @ITEMNMBR varchar(30),  @IVDOCTYP int,  @DOCNUMBR varchar(20),  @DCSTATUS int   )  RETURNS varchar(2000) AS BEGIN   DECLARE @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255),  @EncodedITEMNMBR varchar(255),  @EncodedDOCNUMBR varchar(255)   select @FunctionName = 'OpenItmTrxNmbr'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedITEMNMBR = DYNAMICS.dbo.encodeUrlString(rtrim(@ITEMNMBR))  select @EncodedDOCNUMBR = DYNAMICS.dbo.encodeUrlString(rtrim(@DOCNUMBR))   select @URIstring = '&Act='+@ActionType  + '&Func=' + @FunctionName   + '&ITEMNMBR=' + ltrim(@EncodedITEMNMBR)   + '&IVDOCTYP=' + ltrim(str(@IVDOCTYP))   + '&DOCNUMBR=' + ltrim(@EncodedDOCNUMBR)  + '&DCSTATUS=' + ltrim(str(@DCSTATUS))  + '&ShowUnpostedTrxOnly=false'  RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppItemTransactionNumber] TO [DYNGRP]
GO
