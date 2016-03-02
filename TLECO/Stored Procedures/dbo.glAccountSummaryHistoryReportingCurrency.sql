SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[glAccountSummaryHistoryReportingCurrency]   @TranslationCurrency char(15),  @TranslationDate datetime,  @StartDate datetime,  @EndDate datetime AS   select * from dbo.glFuncAccountSummaryHistoryReportingCurrency(@TranslationCurrency,@TranslationDate,@StartDate,@EndDate)    
GO
GRANT EXECUTE ON  [dbo].[glAccountSummaryHistoryReportingCurrency] TO [DYNGRP]
GO
