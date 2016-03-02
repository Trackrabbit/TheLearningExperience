SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[ExtPricingGetFunctionalCurrency]   @tcsPOST_FunctCurrency char(16) OUTPUT   AS  declare @tcs_FuncCurrency char(16)  select @tcs_FuncCurrency = ''  SELECT @tcs_FuncCurrency = MC40000.FUNLCURR  FROM MC40000  if @tcs_FuncCurrency = NULL  select @tcsPOST_FunctCurrency  = ' ' else  select @tcsPOST_FunctCurrency = @tcs_FuncCurrency    
GO
GRANT EXECUTE ON  [dbo].[ExtPricingGetFunctionalCurrency] TO [DYNGRP]
GO
