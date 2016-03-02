SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[glBudgetTransactionsWorkReportingCurrency]   @TranslationCurrency char(15),  @TranslationDate datetime,  @StartDate datetime,  @EndDate datetime AS   select * from dbo.glFuncBudgetTransactionsWorkReportingCurrency(@TranslationCurrency,@TranslationDate,@StartDate,@EndDate)    
GO
GRANT EXECUTE ON  [dbo].[glBudgetTransactionsWorkReportingCurrency] TO [DYNGRP]
GO
