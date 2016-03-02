SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[glAccountTransactionsOpenReportingCurrency]   @TranslationCurrency char(15),  @TranslationDate datetime,   @StartDate datetime,  @EndDate datetime AS   select * from dbo.glFuncAccountTransactionsOpenReportingCurrency(@TranslationCurrency,@TranslationDate,@StartDate,@EndDate)    
GO
GRANT EXECUTE ON  [dbo].[glAccountTransactionsOpenReportingCurrency] TO [DYNGRP]
GO
