SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[popCalcFunctionalPOTotal] (  @I_mSubtotalAmount numeric(19,5) = NULL,  @I_mTradeDiscountAmount numeric(19,5) = NULL,  @I_mFreightAmount numeric(19,5) = NULL,  @I_mMiscChargeAmount numeric(19,5) = NULL,  @I_mTaxAmount numeric(19,5) = NULL,  @I_sRateCalcMethod smallint  = NULL,   @I_sViewMode smallint  = NULL,   @I_nExchangeRate numeric(15,7) = NULL,  @I_nDenomExchangeRate numeric(15,7) = NULL,  @I_sMCTrxState smallint  = NULL,  @I_sDecimalPlaces smallint  = NULL  ) RETURNS numeric(22,5) AS BEGIN  DECLARE  @I_mOrigTotal numeric(19,5),  @I_mFuncTotal numeric(19,5)  set @I_mOrigTotal = (@I_mSubtotalAmount - @I_mTradeDiscountAmount) +  @I_mFreightAmount + @I_mMiscChargeAmount + @I_mTaxAmount  set @I_mFuncTotal = dbo.mcFuncCalculateAmount(@I_sRateCalcMethod,   @I_sViewMode,  @I_nExchangeRate,  @I_nDenomExchangeRate,  @I_sMCTrxState,  @I_sDecimalPlaces,  @I_mOrigTotal)  return @I_mFuncTotal END   
GO
GRANT EXECUTE ON  [dbo].[popCalcFunctionalPOTotal] TO [DYNGRP]
GO
