SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[glBudgetTransactionsHistoryReportingCurrency]   @TranslationCurrency char(15),  @TranslationDate datetime,  @StartDate datetime,  @EndDate datetime AS   select * from dbo.glFuncBudgetTransactionsHistoryReportingCurrency(@TranslationCurrency,@TranslationDate,@StartDate,@EndDate)    
GO
GRANT EXECUTE ON  [dbo].[glBudgetTransactionsHistoryReportingCurrency] TO [DYNGRP]
GO
