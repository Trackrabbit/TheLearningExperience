SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[popCalcReceiptTotal] (  @I_mSubtotalAmount numeric(19,5) = NULL,  @I_mTradeDiscountAmount numeric(19,5) = NULL,  @I_mFreightAmount numeric(19,5) = NULL,  @I_mMiscChargeAmount numeric(19,5) = NULL,  @I_mTaxAmount numeric(19,5) = NULL,   @I_sPOPType smallint  = NULL  ) RETURNS numeric(22,5) AS BEGIN  DECLARE  @I_mOrigTotal numeric(28,5),  @I_mReturnTotal numeric(22,5)  set @I_mOrigTotal = (case @I_sPOPType  when 2 then ((@I_mSubtotalAmount - @I_mTradeDiscountAmount) +  @I_mFreightAmount +   @I_mMiscChargeAmount +   @I_mTaxAmount)  when 3 then ((@I_mSubtotalAmount - @I_mTradeDiscountAmount) +  @I_mFreightAmount +   @I_mMiscChargeAmount +   @I_mTaxAmount)  when 5 then ((@I_mSubtotalAmount - @I_mTradeDiscountAmount) +  @I_mFreightAmount +   @I_mMiscChargeAmount +   @I_mTaxAmount)  when 7 then ((@I_mSubtotalAmount - @I_mTradeDiscountAmount) +  @I_mFreightAmount +   @I_mMiscChargeAmount +   @I_mTaxAmount)  when 8 then ((@I_mSubtotalAmount - @I_mTradeDiscountAmount) +  @I_mFreightAmount +   @I_mMiscChargeAmount +   @I_mTaxAmount)  else @I_mSubtotalAmount  end)  if @I_mOrigTotal > 99999999999999.99999   begin  set @I_mReturnTotal = 99999999999999.99999   end else  begin  set @I_mReturnTotal = @I_mOrigTotal  end  return(@I_mReturnTotal)  END   
GO
GRANT EXECUTE ON  [dbo].[popCalcReceiptTotal] TO [DYNGRP]
GO
