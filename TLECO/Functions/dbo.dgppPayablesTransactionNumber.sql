SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppPayablesTransactionNumber]  (  @action int,  @DOCTYPE int,  @VCHRNMBR varchar(20),  @DCSTATUS int,  @Currency_View int,  @CallerID int,  @TRXSORCE varchar(50),  @Origin varchar(50)  )  RETURNS varchar(2000) AS BEGIN   DECLARE @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255),  @EncodedVCHRNMBR varchar(255),  @EncodedTRXSORCE varchar(255),  @EncodedOrigin varchar(255)   select @FunctionName = 'OpenPMTrxNmbr'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedVCHRNMBR = DYNAMICS.dbo.encodeUrlString(rtrim(@VCHRNMBR))  select @EncodedTRXSORCE = DYNAMICS.dbo.encodeUrlString(rtrim(@TRXSORCE))  select @EncodedOrigin = DYNAMICS.dbo.encodeUrlString(rtrim(@Origin))  select @URIstring = '&Act=' + @ActionType   + '&Func=' + @FunctionName   + '&DOCTYPE=' + ltrim(str(@DOCTYPE))   + '&VCHRNMBR=' + ltrim(@EncodedVCHRNMBR)  + '&DCSTATUS=' + ltrim(str(@DCSTATUS))  + '&CurncyView=' + ltrim(str(@Currency_View))  + '&CallID=' + ltrim(str(@CallerID))  + '&TRXSORCE=' + ltrim(@EncodedTRXSORCE)  + '&Origin=' + ltrim(@EncodedOrigin)  RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppPayablesTransactionNumber] TO [DYNGRP]
GO
