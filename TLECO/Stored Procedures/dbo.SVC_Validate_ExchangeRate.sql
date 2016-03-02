SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Validate_ExchangeRate]  (@ExchTableID   char(15),  @CurrencyID    char(15),  @CheckDate datetime ,  @Count smallint OUTPUT)  As declare @MinDate datetime  exec smGetMinDate @MinDate output  select @Count = count(*) from DYNAMICS..MC00100 where   EXGTBLID = @ExchTableID and CURNCYID = @CurrencyID and  (EXCHDATE <= @CheckDate and (EXPNDATE >= @CheckDate or EXPNDATE = @MinDate) )  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Validate_ExchangeRate] TO [DYNGRP]
GO
