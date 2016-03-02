SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppReceivablesTransactionNumber]  (  @action int,  @RMDTYPAL int,  @CUSTNMBR varchar(15),  @DOCNUMBR varchar(20),  @DCSTATUS int,  @TRXSORCE varchar(100),  @TRXDSCRN varchar(100),  @Currency_View int,  @CallerID int  )  RETURNS varchar(2000) AS BEGIN   DECLARE @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255),  @EncodedCUSTNMBR varchar(255),  @EncodedDOCNUMBR varchar(255),  @EncodedTRXSORCE varchar(255),  @EncodedTRXDSCRN varchar(255)   select @FunctionName = 'OpenRMTrxNmbr'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedCUSTNMBR = DYNAMICS.dbo.encodeUrlString(rtrim(@CUSTNMBR));  select @EncodedDOCNUMBR = DYNAMICS.dbo.encodeUrlString(rtrim(@DOCNUMBR));  select @EncodedTRXSORCE = DYNAMICS.dbo.encodeUrlString(rtrim(@TRXSORCE));  select @EncodedTRXDSCRN = DYNAMICS.dbo.encodeUrlString(rtrim(@TRXDSCRN));   select @URIstring = '&Act='+@ActionType  + '&Func=' + @FunctionName   + '&CUSTNMBR=' + ltrim(@EncodedCUSTNMBR)  + '&DOCNUMBR=' + ltrim(@EncodedDOCNUMBR)   + '&RMDTYPAL=' + ltrim(str(@RMDTYPAL))  + '&DCSTATUS=' + ltrim(str(@DCSTATUS))  + '&TRXSORCE=' + ltrim(@EncodedTRXSORCE)  + '&TRXDSCRN=' + ltrim(@EncodedTRXDSCRN)   + '&CurncyView=' + ltrim(str(@Currency_View))   + '&CallID=' + ltrim(str(@CallerID))   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppReceivablesTransactionNumber] TO [DYNGRP]
GO
