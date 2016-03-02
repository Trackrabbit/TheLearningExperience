SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppSalesOrderIVC]  (  @action int,  @DCSTATUS int,  @SOURCE int,  @INVCNMBR varchar(20),  @DOCTYPE int,  @CUSTNMBR varchar(15),  @DOCNUMBR varchar(20)  )  RETURNS varchar(2000) AS BEGIN   DECLARE @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255),  @EncodedINVCNMBR varchar(255),  @EncodedCUSTNMBR varchar(255),  @EncodedDOCNUMBR varchar(255)   select @FunctionName = 'OpenSOPIVC'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedINVCNMBR = DYNAMICS.dbo.encodeUrlString(rtrim(@INVCNMBR));  select @EncodedCUSTNMBR = DYNAMICS.dbo.encodeUrlString(rtrim(@CUSTNMBR));  select @EncodedDOCNUMBR = DYNAMICS.dbo.encodeUrlString(rtrim(@DOCNUMBR));   select @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +   '&DCSTATUS=' + ltrim(str(@DCSTATUS)) +  '&SOURCE=' + ltrim(str(@SOURCE)) +  '&INVCNMBR=' + ltrim(@EncodedINVCNMBR) +  '&DOCTYPE=' + ltrim(str(@DOCTYPE)) +  '&CUSTNMBR=' + ltrim(@EncodedCUSTNMBR) +  '&DOCNUMBR=' + ltrim(@EncodedDOCNUMBR)  RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppSalesOrderIVC] TO [DYNGRP]
GO
