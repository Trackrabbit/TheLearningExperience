SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[schp_pmt](  @fPrincipal float(53),     @fInterest float(53),     @iPaymentPerYear int,      @iNumOfPayments int,       @NumDecimals int,      @nPayment float     output    ) AS  if @fInterest = 0   begin  set @nPayment = Round( @fPrincipal / @iNumOfPayments, @NumDecimals)  end else  begin  declare  @Top float(53)  declare  @Bottom  float(53)  declare  @Power int  set @Top = Round(@fPrincipal * (@fInterest / @iPaymentPerYear),15)   set @Power =  Round(-1 * @iNumOfPayments, 15)   set @Bottom = Round(1 - Power( 1 + @fInterest / @iPaymentPerYear, @Power), 15)   set @nPayment = Round( @Top / @Bottom, @NumDecimals)  end  return    
GO
GRANT EXECUTE ON  [dbo].[schp_pmt] TO [DYNGRP]
GO
