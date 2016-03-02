SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[mcFuncCalculateAmountExtended]  (  @I_sRateCalcMethod smallint = NULL,   @I_sViewMode smallint = NULL,   @I_nExchangeRate numeric(15,7) = NULL,  @I_nDenomExchangeRate numeric(15,7) = NULL,  @I_sMCTrxState smallint = NULL,  @I_sDecimalPlaces smallint = NULL,  @I_mAmount numeric(19,5) = NULL  )  RETURNS numeric(22,5) AS BEGIN  declare  @iStatus int,  @O_mCalcAmount numeric(22,5),  @O_iErrorState int,  @TRUE            tinyint,   @FALSE     tinyint,   @sFUNCTIONAL smallint,  @sORIGINATING smallint,  @sMULTIPLY smallint,  @sDIVIDE smallint,  @sMCNOEURO smallint,  @tEuroFirst   tinyint,  @sEuroRateCalcMethod smallint,  @sMCDENOM_TO_NONDENOM smallint,  @tEuroEnabled tinyint,  @tFunctionalEnabled tinyint  select  @O_mCalcAmount  = 0.0,  @O_iErrorState   = 0  if  @I_sRateCalcMethod is NULL or  @I_sViewMode is NULL or  @I_nExchangeRate is NULL or  @I_nDenomExchangeRate is NULL or  @I_sMCTrxState is NULL or  @I_sDecimalPlaces is NULL or  @I_mAmount is NULL begin  select @O_iErrorState = 21043  return(@O_mCalcAmount);  end   select  @TRUE    = 1,  @FALSE           = 0,  @sFUNCTIONAL  = 3,  @sORIGINATING  = 4,  @sMULTIPLY   = 0,  @sDIVIDE   = 1,  @sMCNOEURO   = 0,  @sMCDENOM_TO_NONDENOM  = 4   if (@I_mAmount = 0.0) or (@I_nExchangeRate = 0.0) begin  select @O_mCalcAmount = @I_mAmount   return(@O_mCalcAmount) end  if (@I_nDenomExchangeRate = 0.0) or (@I_sMCTrxState = @sMCNOEURO)  begin   if @I_sViewMode = @sFUNCTIONAL  begin  select  @O_mCalcAmount =   case @I_sRateCalcMethod  when @sMULTIPLY then round(@I_mAmount / @I_nExchangeRate, @I_sDecimalPlaces)  when @sDIVIDE   then round(@I_mAmount * @I_nExchangeRate, @I_sDecimalPlaces)  else 0.0  end  end    else    begin  select  @O_mCalcAmount =   case @I_sRateCalcMethod  when @sMULTIPLY then round(@I_mAmount * @I_nExchangeRate, @I_sDecimalPlaces)  when @sDIVIDE   then round(@I_mAmount / @I_nExchangeRate, @I_sDecimalPlaces)  else 0.0  end  end   end   else begin   if @I_sMCTrxState = @sMCDENOM_TO_NONDENOM  begin  select @tEuroFirst = @TRUE  select @sEuroRateCalcMethod = @sDIVIDE  end  else  begin  select @tEuroFirst = @FALSE  select @sEuroRateCalcMethod = @sMULTIPLY  end   if @I_sViewMode = @sFUNCTIONAL  begin  if @tEuroFirst = @TRUE   select @tEuroFirst = @FALSE  else  select @tEuroFirst = @TRUE    if @sEuroRateCalcMethod = @sDIVIDE  select @sEuroRateCalcMethod = @sMULTIPLY   else  select @sEuroRateCalcMethod = @sDIVIDE   end     if (@tEuroFirst = @TRUE)  begin  if (@I_sRateCalcMethod = @sMULTIPLY)  if (@sEuroRateCalcMethod = @sMULTIPLY)   select @O_mCalcAmount =   round(@I_mAmount * @I_nDenomExchangeRate * @I_nExchangeRate, @I_sDecimalPlaces)  else  select @O_mCalcAmount =   round(@I_mAmount / @I_nDenomExchangeRate * @I_nExchangeRate, @I_sDecimalPlaces)  else  if (@sEuroRateCalcMethod = @sMULTIPLY)   select @O_mCalcAmount =   round(@I_mAmount * @I_nDenomExchangeRate / @I_nExchangeRate, @I_sDecimalPlaces)  else  select @O_mCalcAmount =   round(@I_mAmount / @I_nDenomExchangeRate / @I_nExchangeRate, @I_sDecimalPlaces)   end    else  begin    if (@I_sRateCalcMethod = @sMULTIPLY)  if (@sEuroRateCalcMethod = @sMULTIPLY)   select @O_mCalcAmount =   round(@I_mAmount * @I_nExchangeRate * @I_nDenomExchangeRate , @I_sDecimalPlaces)  else  select @O_mCalcAmount =   round(@I_mAmount * @I_nExchangeRate / @I_nDenomExchangeRate, @I_sDecimalPlaces)  else  if (@sEuroRateCalcMethod = @sMULTIPLY)   select @O_mCalcAmount =   round(@I_mAmount / @I_nExchangeRate * @I_nDenomExchangeRate, @I_sDecimalPlaces)  else  select @O_mCalcAmount =   round(@I_mAmount / @I_nExchangeRate / @I_nDenomExchangeRate, @I_sDecimalPlaces)   end    end    if @O_iErrorState <> 0   select @O_mCalcAmount = 0.0   RETURN(@O_mCalcAmount) END   
GO
GRANT EXECUTE ON  [dbo].[mcFuncCalculateAmountExtended] TO [DYNGRP]
GO