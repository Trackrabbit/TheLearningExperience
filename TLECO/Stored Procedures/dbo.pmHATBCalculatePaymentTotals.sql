SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[pmHATBCalculatePaymentTotals]  @I_tUsingDocumentDate tinyint  = NULL,  @I_dStartDate datetime = NULL,  @I_dEndDate datetime = NULL,  @I_tExcludeUnpostedAppldCrDocs  tinyint  = NULL,  @I_cFunctionalCurrency char(15) = NULL,  @I_tMCRegistered tinyint  = NULL,  @I_sPrintCurrencyIn smallint = NULL,  @I_nReportingExchangeRate numeric(15,7) = NULL,  @I_sReportingRateCalcMethod smallint = NULL,  @I_sReportingDecimalPlaces smallint = NULL,  @O_iErrorState                  int             = NULL output as  declare  @cVoucherNumber char(21),  @sDocumentType smallint,  @tOpenRecord tinyint,  @iStatus                 int,  @nCurrentTrxAmount numeric(19,5),  @nOrigCurrentTrxAmount numeric(19,5),  @nDocumentAmount numeric(19,5),  @nOrigDocumentAmount numeric(19,5),  @nRevalDocAmountAdj numeric(19,5),  @nRevalCurrentTrxAmountAdj numeric(19,5),  @nRevalDiscAmtAvailAdj numeric(19,5),  @nTotalPaymentsAmount numeric(19,5),  @nOrigTotalPaymentsAmount numeric(19,5),  @nAppliedAmount numeric(19,5),  @nRealizedGainLoss numeric(19,5),  @nOriginatingAppliedAmount numeric(19,5),  @nActualApplyToAmount numeric(19,5),  @nCalcAmount numeric(19,5),  @nFromRoundAmount numeric(19,5),  @nOrigFromRoundAmount numeric(19,5),  @nToRoundAmount numeric(19,5),  @nOrigToRoundAmount numeric(19,5),  @cCurrencyID char(15),  @cApplyToCurrencyID char(15),  @cApplyFromCurrencyID char(15),  @dApplyDate datetime,  @sRateCalcMethod smallint,  @sDecimalPlaces smallint,  @nExchangeRate numeric(15,7),  @nDenomExchangeRate numeric(15,7),  @sMCTrxState smallint,  @iCursorError int,  @iError                  int,  @tLoopControl            tinyint,  @vCurrentTrxAmount varchar(30),  @vOrigCurrentTrxAmount varchar(30),  @vDocumentType varchar(2),  @vDiscAmtAvailAdj varchar(30),  @tAgeCrAmts tinyint  select @O_iErrorState = 0  select   @cVoucherNumber  = '',  @sDocumentType  = 0,  @tOpenRecord  = 0,  @iStatus  = 0,  @nCurrentTrxAmount = 0.00,  @nOrigCurrentTrxAmount = 0.00,  @nDocumentAmount = 0.00,  @nOrigDocumentAmount = 0.00,  @nRevalDocAmountAdj = 0.00,  @nRevalCurrentTrxAmountAdj = 0.00,  @nRevalDiscAmtAvailAdj = 0.00,  @nTotalPaymentsAmount = 0.00,  @nOrigTotalPaymentsAmount = 0.00,  @nAppliedAmount  = 0.00,  @nRealizedGainLoss = 0.00,  @nOriginatingAppliedAmount = 0.00,  @nCalcAmount  = 0.00,  @nFromRoundAmount = 0.00,  @nOrigFromRoundAmount = 0.00,  @nToRoundAmount  = 0.00,  @nOrigToRoundAmount = 0.00,  @cCurrencyID  = '',  @cApplyToCurrencyID = '',  @cApplyFromCurrencyID = '',  @dApplyDate  = '',  @sRateCalcMethod = 0,  @sDecimalPlaces  = 0,  @nExchangeRate  = 0.00,  @nDenomExchangeRate = 0.00,  @sMCTrxState  = 0,  @iCursorError  = 0,  @iError   = 0  while @tLoopControl is NULL begin  select @tLoopControl = 1   if  @I_tUsingDocumentDate is NULL or  @I_dStartDate is NULL or  @I_dEndDate is NULL or  @I_tExcludeUnpostedAppldCrDocs is NULL or  @I_cFunctionalCurrency   is NULL or  @I_tMCRegistered is NULL or  @I_sPrintCurrencyIn is NULL or  @I_nReportingExchangeRate is NULL or  @I_sReportingRateCalcMethod is NULL or  @I_sReportingDecimalPlaces is NULL  begin  select @O_iErrorState = 21054  break  end    select  @tAgeCrAmts = AGEUNAPPLDCR  from  PM40100 with (NOLOCK)  where   UNIQKEY = '1'   CREATE index VoucherNumberIndex  on #DocumentTEMP(VoucherNumber)   declare  PaymentCursor  cursor for select  VoucherNumber,  DocumentType,  CurrentTrxAmount,  RevalCurrentTrxAmountAdj,  RevalDiscAmountAvailAdj,  TotalPaymentsAmount,  OrigCurrentTrxAmount,  OrigTotalPaymentsAmount,  CurrencyID,  OpenRecord  from  #DocumentTEMP  where  DocumentType > 3   open PaymentCursor   fetch next from   PaymentCursor  into   @cVoucherNumber,  @sDocumentType,  @nCurrentTrxAmount,  @nRevalCurrentTrxAmountAdj,  @nRevalDiscAmtAvailAdj,  @nTotalPaymentsAmount,  @nOrigCurrentTrxAmount,  @nOrigTotalPaymentsAmount,  @cCurrencyID,  @tOpenRecord   while (@@fetch_status <> -1)  begin  if (@@fetch_status = -2)  begin  select @O_iErrorState = 21055  break  end   set rowcount 1   select   @nRevalCurrentTrxAmountAdj = @nRevalCurrentTrxAmountAdj +   (case when @I_sPrintCurrencyIn = 1 and @I_tMCRegistered = 1 then  case when @I_sReportingRateCalcMethod = 1 then  isnull(round((A.Total_Gain_or_Loss_on_Cu * @I_nReportingExchangeRate), @I_sReportingDecimalPlaces), 0.00)  else  isnull(round((A.Total_Gain_or_Loss_on_Cu / @I_nReportingExchangeRate), @I_sReportingDecimalPlaces), 0.00)  end  else  isnull(A.Total_Gain_or_Loss_on_Cu, 0.00)  end)  from  MC020105 A with (NOLOCK)  where  A.CURNCYID = @cCurrencyID  and  A.VCHRNMBR = @cVoucherNumber   and A.DOCTYPE  = @sDocumentType  order by A.RVLUDATE DESC, A.SEQNUMBR DESC    set rowcount 0   select @nCurrentTrxAmount = @nCurrentTrxAmount - @nRevalCurrentTrxAmountAdj   if @cCurrencyID = '' or @cCurrencyID = @I_cFunctionalCurrency  select @nOrigCurrentTrxAmount = 0.00  else  select @nOrigCurrentTrxAmount = @nOrigCurrentTrxAmount   if @tOpenRecord = 1    begin   declare  AppliedOpenCursor INSENSITIVE  cursor for select  APPLDAMT,  RLGANLOS,  ORAPPAMT,  ActualApplyToAmount,  CURNCYID,  FROMCURR,  DATE1,  APYFRMRNDAMT,  OAPYFRMRNDAMT,  APYTORNDAMT,  OAPYTORNDAMT  from  PM10200  where  VCHRNMBR = @cVoucherNumber  and DOCTYPE = @sDocumentType  and  ((@I_tUsingDocumentDate = 1  and (DATE1 < @I_dStartDate or DATE1 > @I_dEndDate  or  APTODCDT < @I_dStartDate or APTODCDT > @I_dEndDate))  or  (@I_tUsingDocumentDate = 0  and (GLPOSTDT < @I_dStartDate or GLPOSTDT > @I_dEndDate  or  ApplyToGLPostDate < @I_dStartDate or ApplyToGLPostDate > @I_dEndDate)))  and ((@I_tExcludeUnpostedAppldCrDocs = 1  and POSTED = 1)  or (@I_tExcludeUnpostedAppldCrDocs = 0))   open AppliedOpenCursor   fetch next from   AppliedOpenCursor  into   @nAppliedAmount,  @nRealizedGainLoss,  @nOriginatingAppliedAmount,  @nActualApplyToAmount,  @cApplyToCurrencyID,  @cApplyFromCurrencyID,  @dApplyDate,  @nFromRoundAmount,  @nOrigFromRoundAmount,  @nToRoundAmount,  @nOrigToRoundAmount   while (@@fetch_status <> -1)  begin  if (@@fetch_status = -2)  begin  select @O_iErrorState = 21056  break  end   if @I_sPrintCurrencyIn = 1 and @I_tMCRegistered = 1  begin  if @I_sReportingRateCalcMethod = 1  begin  select @nCurrentTrxAmount =  @nCurrentTrxAmount +   ISNULL(ROUND((@nAppliedAmount * @I_nReportingExchangeRate),@I_sReportingDecimalPlaces),0.00) -   ISNULL(ROUND((@nRealizedGainLoss * @I_nReportingExchangeRate),@I_sReportingDecimalPlaces),0.00) +  ISNULL(ROUND((@nFromRoundAmount * @I_nReportingExchangeRate),@I_sReportingDecimalPlaces),0.00) -  ISNULL(ROUND((@nToRoundAmount * @I_nReportingExchangeRate),@I_sReportingDecimalPlaces),0.00)  end  else  begin  select @nCurrentTrxAmount =  @nCurrentTrxAmount +   ISNULL(ROUND((@nAppliedAmount / @I_nReportingExchangeRate),@I_sReportingDecimalPlaces),0.00) -   ISNULL(ROUND((@nRealizedGainLoss / @I_nReportingExchangeRate),@I_sReportingDecimalPlaces),0.00) +  ISNULL(ROUND((@nFromRoundAmount / @I_nReportingExchangeRate),@I_sReportingDecimalPlaces),0.00) -  ISNULL(ROUND((@nToRoundAmount / @I_nReportingExchangeRate),@I_sReportingDecimalPlaces),0.00)  end  end   else    begin  select @nCurrentTrxAmount = @nCurrentTrxAmount +  @nAppliedAmount -  @nRealizedGainLoss +  @nFromRoundAmount -  @nToRoundAmount  end   if @cCurrencyID = '' or @cCurrencyID = @I_cFunctionalCurrency  begin  select @nOrigCurrentTrxAmount = 0.00  end   else if (@cApplyFromCurrencyID <> '' and @cApplyFromCurrencyID <> @I_cFunctionalCurrency) and   (@cApplyToCurrencyID <> '' and @cApplyToCurrencyID <> @I_cFunctionalCurrency)  begin  select @nOrigCurrentTrxAmount = @nOrigCurrentTrxAmount + @nActualApplyToAmount + @nOrigFromRoundAmount  end   else  begin   if @cApplyToCurrencyID = '' or @cApplyToCurrencyID = @I_cFunctionalCurrency  begin  set rowcount 1   select  @sRateCalcMethod = RTCLCMTD,  @nExchangeRate = XCHGRATE,  @nDenomExchangeRate = DENXRATE,  @sMCTrxState = MCTRXSTT  from  MC020105 with (NOLOCK)  where  CURNCYID = @cApplyFromCurrencyID  and VCHRNMBR = @cVoucherNumber  and DOCTYPE  = @sDocumentType  and RVLUDATE <= @dApplyDate  order by RVLUDATE DESC, SEQNUMBR DESC   if @@rowcount <> 1  begin  select  @sRateCalcMethod = RTCLCMTD,  @nExchangeRate = XCHGRATE,  @nDenomExchangeRate = DENXRATE,  @sMCTrxState = MCTRXSTT  from  MC020103 with (NOLOCK)  where  VCHRNMBR = @cVoucherNumber  and DOCTYPE  = @sDocumentType   end   set rowcount 0   select  @sDecimalPlaces = ISNULL(DECPLCUR,3) - 1  from  DYNAMICS..MC40200 with (NOLOCK)  where  CURNCYID = @cApplyFromCurrencyID   Exec @iStatus = mcCalculateAmount  @sRateCalcMethod,  3,     @nExchangeRate,  @nDenomExchangeRate,  '',       @sMCTrxState,  @sDecimalPlaces,  '',     @nAppliedAmount,   @nCalcAmount output,  @O_iErrorState          output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   select @nOrigCurrentTrxAmount = @nOrigCurrentTrxAmount +   @nCalcAmount +  @nOrigFromRoundAmount -  @nOrigToRoundAmount  end   else  begin  select @nOrigCurrentTrxAmount = @nOrigCurrentTrxAmount +  @nOriginatingAppliedAmount +  @nOrigFromRoundAmount -  @nOrigToRoundAmount  end  end   fetch next from   AppliedOpenCursor  into   @nAppliedAmount,  @nRealizedGainLoss,  @nOriginatingAppliedAmount,  @nActualApplyToAmount,  @cApplyToCurrencyID,  @cApplyFromCurrencyID,  @dApplyDate,  @nFromRoundAmount,  @nOrigFromRoundAmount,  @nToRoundAmount,  @nOrigToRoundAmount   end    deallocate AppliedOpenCursor   if @iStatus <> 0 or @O_iErrorState <> 0  break   end     else    begin   declare  AppliedHistoryCursor INSENSITIVE  cursor for select  APPLDAMT,  RLGANLOS,  ORAPPAMT,  ActualApplyToAmount,  CURNCYID,  FROMCURR,  DATE1,  APYFRMRNDAMT,  OAPYFRMRNDAMT,  APYTORNDAMT,  OAPYTORNDAMT  from  PM30300  where  VCHRNMBR = @cVoucherNumber  and DOCTYPE = @sDocumentType  and  ((@I_tUsingDocumentDate = 1  and (DATE1 < @I_dStartDate or DATE1 > @I_dEndDate  or  APTODCDT < @I_dStartDate or APTODCDT > @I_dEndDate))  or  (@I_tUsingDocumentDate = 0  and (GLPOSTDT < @I_dStartDate or GLPOSTDT > @I_dEndDate  or  ApplyToGLPostDate < @I_dStartDate or ApplyToGLPostDate > @I_dEndDate)))   open AppliedHistoryCursor   fetch next from   AppliedHistoryCursor  into   @nAppliedAmount,  @nRealizedGainLoss,  @nOriginatingAppliedAmount,  @nActualApplyToAmount,  @cApplyToCurrencyID,  @cApplyFromCurrencyID,  @dApplyDate,  @nFromRoundAmount,  @nOrigFromRoundAmount,  @nToRoundAmount,  @nOrigToRoundAmount   while (@@fetch_status <> -1)  begin  if (@@fetch_status = -2)  begin  select @O_iErrorState = 21057  break  end   if @I_sPrintCurrencyIn = 1 and @I_tMCRegistered = 1  begin  if @I_sReportingRateCalcMethod = 1  begin  select @nCurrentTrxAmount =  @nCurrentTrxAmount +   ISNULL(ROUND((@nAppliedAmount * @I_nReportingExchangeRate),@I_sReportingDecimalPlaces),0.00) -   ISNULL(ROUND((@nRealizedGainLoss * @I_nReportingExchangeRate),@I_sReportingDecimalPlaces),0.00) +  ISNULL(ROUND((@nFromRoundAmount * @I_nReportingExchangeRate),@I_sReportingDecimalPlaces),0.00) -  ISNULL(ROUND((@nToRoundAmount * @I_nReportingExchangeRate),@I_sReportingDecimalPlaces),0.00)  end  else  begin  select @nCurrentTrxAmount =  @nCurrentTrxAmount +   ISNULL(ROUND((@nAppliedAmount / @I_nReportingExchangeRate),@I_sReportingDecimalPlaces),0.00) -   ISNULL(ROUND((@nRealizedGainLoss / @I_nReportingExchangeRate),@I_sReportingDecimalPlaces),0.00) +  ISNULL(ROUND((@nFromRoundAmount / @I_nReportingExchangeRate),@I_sReportingDecimalPlaces),0.00) -  ISNULL(ROUND((@nToRoundAmount / @I_nReportingExchangeRate),@I_sReportingDecimalPlaces),0.00)  end  end   else    begin  select @nCurrentTrxAmount = @nCurrentTrxAmount +  @nAppliedAmount -   @nRealizedGainLoss +  @nFromRoundAmount -  @nToRoundAmount  end   if @cCurrencyID = '' or @cCurrencyID = @I_cFunctionalCurrency  begin  select @nOrigCurrentTrxAmount = 0.00  end   else if (@cApplyFromCurrencyID <> '' and @cApplyFromCurrencyID <> @I_cFunctionalCurrency) and   (@cApplyToCurrencyID <> '' and @cApplyToCurrencyID <> @I_cFunctionalCurrency)  begin  select @nOrigCurrentTrxAmount = @nOrigCurrentTrxAmount + @nActualApplyToAmount + @nOrigFromRoundAmount  end   else  begin   if @cApplyToCurrencyID = '' or @cApplyToCurrencyID = @I_cFunctionalCurrency  begin  set rowcount 1   select  @sRateCalcMethod = RTCLCMTD,  @nExchangeRate = XCHGRATE,  @nDenomExchangeRate = DENXRATE,  @sMCTrxState = MCTRXSTT  from  MC020105 with (NOLOCK)  where  CURNCYID = @cApplyFromCurrencyID  and VCHRNMBR = @cVoucherNumber  and DOCTYPE  = @sDocumentType  and RVLUDATE <= @dApplyDate  order by RVLUDATE DESC, SEQNUMBR DESC   if @@rowcount <> 1  begin  select  @sRateCalcMethod = RTCLCMTD,  @nExchangeRate = XCHGRATE,  @nDenomExchangeRate = DENXRATE,  @sMCTrxState = MCTRXSTT  from  MC020103 with (NOLOCK)  where  VCHRNMBR = @cVoucherNumber  and DOCTYPE  = @sDocumentType   end   set rowcount 0    select  @sDecimalPlaces = ISNULL(DECPLCUR,3) - 1  from  DYNAMICS..MC40200 with (NOLOCK)  where  CURNCYID = @cApplyFromCurrencyID   Exec @iStatus = mcCalculateAmount  @sRateCalcMethod,  3,     @nExchangeRate,  @nDenomExchangeRate,  '',       @sMCTrxState,  @sDecimalPlaces,  '',     @nAppliedAmount,   @nCalcAmount output,  @O_iErrorState          output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if (@iStatus <> 0) or (@O_iErrorState <> 0)  break   select @nOrigCurrentTrxAmount = @nOrigCurrentTrxAmount +  @nCalcAmount +  @nOrigFromRoundAmount -  @nOrigToRoundAmount  end   else  begin  select @nOrigCurrentTrxAmount = @nOrigCurrentTrxAmount +  @nOriginatingAppliedAmount +  @nOrigFromRoundAmount -  @nOrigToRoundAmount  end  end   fetch next from   AppliedHistoryCursor  into   @nAppliedAmount,  @nRealizedGainLoss,  @nOriginatingAppliedAmount,  @nActualApplyToAmount,  @cApplyToCurrencyID,  @cApplyFromCurrencyID,  @dApplyDate,  @nFromRoundAmount,  @nOrigFromRoundAmount,  @nToRoundAmount,  @nOrigToRoundAmount   end    deallocate AppliedHistoryCursor   if @iStatus <> 0 or @O_iErrorState <> 0  break   end     select  @vCurrentTrxAmount = convert(varchar(30),@nCurrentTrxAmount),  @vOrigCurrentTrxAmount = convert(varchar(30),@nOrigCurrentTrxAmount),  @vDocumentType  = convert(varchar(30),@sDocumentType),  @vDiscAmtAvailAdj = convert(varchar(30),@nRevalDiscAmtAvailAdj)   if @tAgeCrAmts = 0   exec('update  #DocumentTEMP  set  CurrentTrxAmount = (-1 * ' + @vCurrentTrxAmount + '),  OrigCurrentTrxAmount = (-1 * ' + @vOrigCurrentTrxAmount + '),  RevalDiscAmountAvailAdj = ' + @vDiscAmtAvailAdj + ',   AgingPeriod = 1  from  #DocumentTEMP WITH(INDEX(VoucherNumberIndex))  where  VoucherNumber = ''' + @cVoucherNumber + '''  and DocumentType  = ' + @vDocumentType)  else  exec('update  #DocumentTEMP  set  CurrentTrxAmount = (-1 * ' + @vCurrentTrxAmount + '),  OrigCurrentTrxAmount = (-1 * ' + @vOrigCurrentTrxAmount + '),  RevalDiscAmountAvailAdj = ' + @vDiscAmtAvailAdj + '   from  #DocumentTEMP WITH(INDEX(VoucherNumberIndex))  where  VoucherNumber = ''' + @cVoucherNumber + '''  and DocumentType  = ' + @vDocumentType)   fetch next from   PaymentCursor  into   @cVoucherNumber,  @sDocumentType,  @nCurrentTrxAmount,  @nRevalCurrentTrxAmountAdj,  @nRevalDiscAmtAvailAdj,  @nTotalPaymentsAmount,  @nOrigCurrentTrxAmount,  @nOrigTotalPaymentsAmount,  @cCurrencyID,  @tOpenRecord   end    deallocate PaymentCursor    if @iStatus <> 0 or @O_iErrorState <> 0  break  end   return   
GO
GRANT EXECUTE ON  [dbo].[pmHATBCalculatePaymentTotals] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[pmHATBCalculatePaymentTotals] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[pmHATBCalculatePaymentTotals] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[pmHATBCalculatePaymentTotals] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[pmHATBCalculatePaymentTotals] TO [rpt_executive]
GO
