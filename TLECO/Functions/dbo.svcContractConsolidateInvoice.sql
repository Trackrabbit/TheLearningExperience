SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[svcContractConsolidateInvoice]  (  @I_vCONTNBR char(11),  @I_vBillCust char(15),  @I_ConsolidateInvoice tinyint  ) RETURNS tinyint as BEGIN declare @CurrenyID char(15),@ContractCurrenyID char(15), @iReturnValue tinyint   select @iReturnValue = @I_ConsolidateInvoice   if @I_ConsolidateInvoice = 1 and (@I_vCONTNBR > '')  begin  select @CurrenyID = CURNCYID from RM00101 where CUSTNMBR  = @I_vBillCust  select @ContractCurrenyID = CURNCYID from SVC00600 where CONTNBR = @I_vCONTNBR  if @CurrenyID <> @ContractCurrenyID   select  @iReturnValue = 0  end   RETURN (@iReturnValue) END   
GO
GRANT EXECUTE ON  [dbo].[svcContractConsolidateInvoice] TO [DYNGRP]
GO
