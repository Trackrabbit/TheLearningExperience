SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[glAccountTransactionsHistoryReportingCurrency]   @TranslationCurrency char(15),  @TranslationDate datetime,   @StartDate datetime,  @EndDate datetime AS   select * from dbo.glFuncAccountTransactionsHistoryReportingCurrency(@TranslationCurrency,@TranslationDate,@StartDate,@EndDate)    
GO
GRANT EXECUTE ON  [dbo].[glAccountTransactionsHistoryReportingCurrency] TO [DYNGRP]
GO
