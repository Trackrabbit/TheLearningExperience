SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[glAccountTransactionsWorkReportingCurrency]   @TranslationCurrency char(15),  @TranslationDate datetime,   @StartDate datetime,  @EndDate datetime AS   select * from dbo.glFuncAccountTransactionsWorkReportingCurrency(@TranslationCurrency,@TranslationDate,@StartDate,@EndDate)    
GO
GRANT EXECUTE ON  [dbo].[glAccountTransactionsWorkReportingCurrency] TO [DYNGRP]
GO
