SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[svcContractSiteNextBillDate]  (  @I_vCONTNBR char(11),  @I_vBillCust char(15),  @I_vBillAddress char(15)  ) RETURNS datetime as BEGIN  declare  @NextBillDate datetime declare  @iReturnValue datetime   select @NextBillDate = min(NXTBLDTE)  from SVC00601 WITH (NOLOCK)   where SVC00601.CONSTS = 2 and SVC00601.CONTNBR = @I_vCONTNBR AND Credit_Hold = 0  AND SVC00601.Bill_To_Customer = @I_vBillCust AND SVC00601.SVC_Bill_To_Address_Code = @I_vBillAddress  select @iReturnValue = isnull(@NextBillDate,'1900-01-01')   RETURN (@iReturnValue) END   
GO
GRANT EXECUTE ON  [dbo].[svcContractSiteNextBillDate] TO [DYNGRP]
GO
