SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[mcFuncSetDenExchRate]  (  @I_cCurrencyID char(15) = NULL,  @I_nRateCalcMethod smallint = NULL,  @I_cFunctional_Currency char(15) = NULL,  @I_cEuroCurrency char(15) = NULL,  @I_tEuroEnabled tinyint  = NULL,  @I_tFunctionalEnabled tinyint  = NULL,  @MC_NOEURO int  = NULL,  @MC_NONDENOM_TO_NONDENOM int  = NULL,  @MC_NONDENOM_TO_EURO int  = NULL,  @MC_NONDENOM_TO_DENOM int  = NULL,  @MC_DENOM_TO_NONDENOM int  = NULL,  @MC_DENOM_TO_DENOM int  = NULL,  @MC_DENOM_TO_EURO int  = NULL,  @MC_EURO_TO_DENOM int  = NULL,  @MC_EURO_TO_NONDENOM int  = NULL  )  RETURNS  [numeric](19, 7) AS  BEGIN   declare @FALSE int,  @TRUE int,  @MULTIPLY int,  @DIVIDE int,  @nDenExchRate  [numeric](19, 7)   select @FALSE = 0,  @TRUE = 1,  @MULTIPLY = 0,  @DIVIDE = 1,  @nDenExchRate = 0.0   if @I_nRateCalcMethod = @MULTIPLY  begin  select @nDenExchRate = case  when (@FALSE = @I_tEuroEnabled) then   0.0  when (@FALSE = @I_tFunctionalEnabled)   and (@FALSE = isnull(( select ENABLED from MC60400 where DENOMCURR = @I_cCurrencyID), @FALSE ))   and (@I_cEuroCurrency != @I_cCurrencyID)  and (@I_cEuroCurrency != @I_cFunctional_Currency) then  0.0  when (@FALSE = isnull(( select ENABLED from MC60400 where DENOMCURR = @I_cCurrencyID), @FALSE ))   and (@I_cEuroCurrency = @I_cFunctional_Currency) then  0.0  when (@TRUE = @I_tFunctionalEnabled)   and (@FALSE = isnull(( select ENABLED from MC60400 where DENOMCURR = @I_cCurrencyID), @FALSE ))   and (@I_cCurrencyID != @I_cEuroCurrency) then  isnull((select DENXRATE from DYNAMICS..MC40401 where DENOMCURR = @I_cFunctional_Currency), 0.0)  when (@FALSE = @I_tFunctionalEnabled)   and (@TRUE = isnull(( select ENABLED from MC60400 where DENOMCURR = @I_cCurrencyID), @FALSE ))   and (@I_cEuroCurrency != @I_cFunctional_Currency) then  isnull((select DENXRATE from DYNAMICS..MC40401 where DENOMCURR = @I_cCurrencyID),0.0)  when (@FALSE = @I_tFunctionalEnabled)   and (@TRUE = isnull(( select ENABLED from MC60400 where DENOMCURR = @I_cCurrencyID), @FALSE )) then  isnull((select DENXRATE from DYNAMICS..MC40401 where DENOMCURR = @I_cFunctional_Currency), 0.0)  when (@TRUE = isnull(( select ENABLED from MC60400 where DENOMCURR = @I_cCurrencyID), @FALSE ))   and (@I_cFunctional_Currency = @I_cEuroCurrency) then  0.0  when (@TRUE = @I_tFunctionalEnabled)   and (@I_cCurrencyID = @I_cEuroCurrency) then  0.0  when (@FALSE = @I_tFunctionalEnabled)   and (@I_cFunctional_Currency != @I_cEuroCurrency)  and (@I_cCurrencyID = @I_cEuroCurrency) then  0.0  else   -1  end  end  else if @I_nRateCalcMethod = @DIVIDE  begin  select @nDenExchRate = case  when (@FALSE = @I_tEuroEnabled) then   0.0  when (@FALSE = @I_tFunctionalEnabled)   and (@FALSE = isnull(( select ENABLED from MC60400 where DENOMCURR = @I_cCurrencyID), @FALSE )) then  0.0  when (@FALSE = isnull(( select ENABLED from MC60400 where DENOMCURR = @I_cCurrencyID), @FALSE ))   and (@I_cEuroCurrency = @I_cFunctional_Currency) then  0.0  when (@TRUE = @I_tFunctionalEnabled)   and (@FALSE = isnull(( select ENABLED from MC60400 where DENOMCURR = @I_cCurrencyID), @FALSE ))   and (@I_cCurrencyID != @I_cEuroCurrency) then  isnull((select DENXRATE from DYNAMICS..MC40401 where DENOMCURR = @I_cFunctional_Currency), 0.0)  when (@FALSE = @I_tFunctionalEnabled)   and (@TRUE = isnull(( select ENABLED from MC60400 where DENOMCURR = @I_cCurrencyID), @FALSE ))   and (@I_cEuroCurrency != @I_cFunctional_Currency) then  isnull((select DENXRATE from DYNAMICS..MC40401 where DENOMCURR = @I_cCurrencyID),0.0)  when (@TRUE = @I_tFunctionalEnabled)   and (@TRUE = isnull(( select ENABLED from MC60400 where DENOMCURR = @I_cCurrencyID), @FALSE )) then  isnull((select DENXRATE from DYNAMICS..MC40401 where DENOMCURR = @I_cFunctional_Currency), 0.0)  when (@TRUE = isnull(( select ENABLED from MC60400 where DENOMCURR = @I_cCurrencyID), @FALSE ))   and (@I_cFunctional_Currency = @I_cEuroCurrency) then  0.0  when (@TRUE = @I_tFunctionalEnabled)   and (@I_cCurrencyID = @I_cEuroCurrency) then  0.0  when (@FALSE = @I_tFunctionalEnabled)   and (@I_cFunctional_Currency != @I_cEuroCurrency)  and (@I_cCurrencyID = @I_cEuroCurrency) then  0.0  else   -1  end  end   RETURN(@nDenExchRate)  END   
GO
GRANT EXECUTE ON  [dbo].[mcFuncSetDenExchRate] TO [DYNGRP]
GO
