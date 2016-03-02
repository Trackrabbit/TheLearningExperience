SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[glBudgetSummaryReportingCurrency]   @TranslationCurrency char(15),  @TranslationDate datetime,  @StartDate datetime,  @EndDate datetime AS   select * from dbo.glFuncBudgetSummaryReportingCurrency(@TranslationCurrency,@TranslationDate,@StartDate,@EndDate)    
GO
GRANT EXECUTE ON  [dbo].[glBudgetSummaryReportingCurrency] TO [DYNGRP]
GO
