SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[schp_nper](  @fPrincipal float,      @fInterest float,       @iPaymentPerYear int,      @fPYMNT float,      @NumPmts float     output   ) AS  if @fInterest  = 0   begin  set @NumPmts = ceiling(@fPrincipal / -@fPYMNT)  return  end  else  begin  declare @UpperTop    float  declare @LowerTop float  declare @Top  float  declare @Bottom float   set @UpperTop =  @fPYMNT  set @LowerTop = @fPYMNT + ((@fInterest / @iPaymentPerYear) * @fPrincipal)   set @Top = log(@UpperTop / @LowerTop)  set @Bottom = log(1 + (@fInterest / @iPaymentPerYear))  set @NumPmts = ceiling( @Top / @Bottom)    return  end    
GO
GRANT EXECUTE ON  [dbo].[schp_nper] TO [DYNGRP]
GO
