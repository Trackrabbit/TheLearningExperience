SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[pmHATBAdjustForRevaluation]  @I_dEndDate datetime = NULL,  @I_tMCRegistered tinyint  = NULL,  @I_sPrintCurrencyIn smallint = NULL,  @I_nReportingExchangeRate numeric(15,7) = NULL,  @I_sReportingRateCalcMethod smallint = NULL,  @I_sReportingDecimalPlaces smallint = NULL,  @O_iErrorState                  int             = NULL output as  declare  @tLoopControl tinyint,  @iStatus int  select  @iStatus = 0,  @O_iErrorState = 0  while @tLoopControl is NULL begin  select @tLoopControl = 1   if @I_dEndDate      is NULL or  @I_tMCRegistered is NULL or  @I_sPrintCurrencyIn is NULL or  @I_nReportingExchangeRate is NULL or  @I_sReportingRateCalcMethod is NULL or  @I_sReportingDecimalPlaces is NULL  begin  select @O_iErrorState = 21044  break  end   update  #DocumentTEMP  set  RevalDocAmountAdj  =  case when MC020105.RVLUDATE <= @I_dEndDate then  case WHEN @I_sPrintCurrencyIn = 1 and @I_tMCRegistered = 1 then  case when @I_sReportingRateCalcMethod = 1 then  ISNULL(ROUND((Total_Gain_or_Loss_on_Cu * @I_nReportingExchangeRate),   @I_sReportingDecimalPlaces),0.00)  else  ISNULL(ROUND((Total_Gain_or_Loss_on_Cu / @I_nReportingExchangeRate),   @I_sReportingDecimalPlaces),0.00)  end  ELSE  Total_Gain_or_Loss_on_Cu  end  else  0.00  end,  RevalDiscAmountAvailAdj =  case when MC020105.RVLUDATE > @I_dEndDate then  case WHEN @I_sPrintCurrencyIn = 1 and @I_tMCRegistered = 1 then  case when @I_sReportingRateCalcMethod = 1 then  ISNULL(ROUND((Total_Gain_or_Loss_on_Di * @I_nReportingExchangeRate),   @I_sReportingDecimalPlaces),0.00)  else  ISNULL(ROUND((Total_Gain_or_Loss_on_Di / @I_nReportingExchangeRate),   @I_sReportingDecimalPlaces),0.00)  end  ELSE  Total_Gain_or_Loss_on_Di  end  else  0.00  end,  RevalCurrentTrxAmountAdj =   case when MC020105.RVLUDATE > @I_dEndDate then  case WHEN @I_sPrintCurrencyIn = 1 and @I_tMCRegistered = 1 then  case when @I_sReportingRateCalcMethod = 1 then  ISNULL(ROUND((Total_Gain_or_Loss_on_Cu * @I_nReportingExchangeRate),   @I_sReportingDecimalPlaces),0.00)  else  ISNULL(ROUND((Total_Gain_or_Loss_on_Cu / @I_nReportingExchangeRate),   @I_sReportingDecimalPlaces),0.00)  end  ELSE  Total_Gain_or_Loss_on_Cu  end  else  0.00  end,  ExchangeRate =   case when MC020105.RVLUDATE <= @I_dEndDate then  case when (MC020105.XCHGRATE is NULL or MC020105.XCHGRATE = 0.0000000) then  ExchangeRate  else  MC020105.XCHGRATE  end  else  ExchangeRate  end,  DenominationExchangeRate =   case when MC020105.RVLUDATE <= @I_dEndDate then  case when (MC020105.XCHGRATE is NULL or MC020105.XCHGRATE = 0.0000000) then  DenominationExchangeRate  else  MC020105.DENXRATE  end  else  DenominationExchangeRate  end,   MCTransactionState =   case when MC020105.RVLUDATE <= @I_dEndDate then  case when (MC020105.XCHGRATE is NULL or MC020105.XCHGRATE = 0.0000000) then  MCTransactionState   else  MC020105.MCTRXSTT  end  else  MCTransactionState   end  from  MC020105  where  MC020105.CURNCYID = #DocumentTEMP.CurrencyID  and MC020105.VCHRNMBR = #DocumentTEMP.VoucherNumber  and MC020105.DOCTYPE  = #DocumentTEMP.DocumentType  end   return (@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[pmHATBAdjustForRevaluation] TO [DYNGRP]
GO