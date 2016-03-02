SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[svcContractSiteLastAmountBilled]   (  @I_vCONTNBR char(11),  @I_vBillCust char(15),  @I_vBillAddress char(15),  @I_vFuncOrOrig tinyint = 0   ) RETURNS numeric(19,5) as BEGIN declare @iAmountToInvoice numeric(19,5),  @iOrigAmountToInvoice numeric(19,5),  @iReturnValue numeric(19,5)   select @iAmountToInvoice = 0,  @iOrigAmountToInvoice = 0,  @iReturnValue = 0   if (@I_vCONTNBR <> '')  begin  select @iAmountToInvoice = sum(Last_Amount_Billed),  @iOrigAmountToInvoice = sum(ORIGLASTAmountBilled)  from SVC00601 WITH (NOLOCK)   where SVC00601.CONSTS = 2 and SVC00601.CONTNBR = @I_vCONTNBR  AND SVC00601.Bill_To_Customer = @I_vBillCust AND SVC00601.SVC_Bill_To_Address_Code = @I_vBillAddress  select @iAmountToInvoice = isnull(@iAmountToInvoice,0)  select @iOrigAmountToInvoice = isnull(@iOrigAmountToInvoice,0)   end  if (@I_vFuncOrOrig = 0)  set @iReturnValue = @iAmountToInvoice  else  set @iReturnValue = @iOrigAmountToInvoice   RETURN (@iReturnValue) END   
GO
GRANT EXECUTE ON  [dbo].[svcContractSiteLastAmountBilled] TO [DYNGRP]
GO
