SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[glFuncBudgetSummaryReportingCurrency] (  @TranslationCurrency char(15),  @TranslationDate datetime,   @StartDate datetime,  @EndDate datetime )  returns @glBudgetSummary table (  BUDGETID char(15),  PERIODDT datetime,  PERIODID smallint,  BUDGETAMT numeric(19,5),  TranslationBUDGETAMT numeric(22,5),  ACCATNUM int,  ACTINDX smallint,  TranslationCurrencyID char(15),  TranslationExchangeRate numeric(19,7),  DENXRATE numeric(19,7),  YEAR1 int )   AS  BEGIN  Declare @CurrencyTranslationType int  set @CurrencyTranslationType=4 insert into @glBudgetSummary  select   [GL00201Final].[BUDGETID],  [GL00201Final].[PERIODDT],  [GL00201Final].[PERIODID],  [GL00201Final].[BUDGETAMT],  case GL00201Final.BUDGETAMT  when 0.0 then  0.0  else  dbo.mcFuncCalculateAmountExtended([GL00201Final].[RTCLCMTD], 3,   [GL00201Final].[TranslationExchangeRate],  [GL00201Final].[DENXRATE],  [GL00201Final].[MCTRXSTT],  [GL00201Final].[DECPLCUR],   [GL00201Final].[BUDGETAMT])  end as TranslationBUDGETAMT,  [GL00201Final].[ACCATNUM],  [GL00201Final].[ACTINDX],  [GL00201Final].[TranslationCurrencyID],  [GL00201Final].[TranslationExchangeRate],  [GL00201Final].[DENXRATE],  [GL00201Final].[YEAR1] from (select distinct   [GL_Budget_SUM_MSTR].[BUDGETID],   [GL_Budget_SUM_MSTR].[PERIODDT],   [GL_Budget_SUM_MSTR].[PERIODID],  [GL_Budget_SUM_MSTR].[BUDGETAMT],  [GL_Budget_SUM_MSTR].[ACCATNUM],  [GL_Budget_SUM_MSTR].[ACTINDX],  [GL_Budget_SUM_MSTR].[YEAR1],  [GL_Budget_SUM_MSTR].[TranslationCurrencyID],  [GL_Budget_SUM_MSTR].[SERIES],  [GL_Budget_SUM_MSTR].[PERDENDT],  F.XCHGRATE as TranslationExchangeRate,  E.[CURRNIDX],  (E.[DECPLCUR]-1) as DECPLCUR,  [GL_Budget_SUM_MSTR].[EXGTBLID],  D.[RTCLCMTD],  dbo.mcFuncGetDenExchRate(@TranslationCurrency,D.RTCLCMTD) as DENXRATE,  [GL_Budget_SUM_MSTR].[MCTRXSTT] from DYNAMICS..MC40200 E, DYNAMICS..MC40300 D cross apply  (select a.BUDGETID,a.PERIODDT,a.PERIODDT as TRXDATE,a.PERIODID,a.BUDGETAMT,a.ACCATNUM,a.ACTINDX,a.YEAR1,  b.CURNCYID as TranslationCurrencyID, 2 as SERIES,  b.BudgetExchangeTableID as EXGTBLID,  dbo.glFuncGetPeriodEndDate(a.YEAR1,2,a.PERIODID) as PERDENDT,  dbo.mcFuncGetMCTrxState(b.CURNCYID) as MCTRXSTT  from GL00201 a, MC40600 b  where b.CURNCYID=@TranslationCurrency and  a.PERIODDT >=@StartDate and a.PERIODDT <=@EndDate) GL_Budget_SUM_MSTR  cross apply dbo.mcFuncGetExchangeRateTable(GL_Budget_SUM_MSTR.PERDENDT, GL_Budget_SUM_MSTR.EXGTBLID, D.TRXDTDEF, D.DATELMTS,D.PRVDSLMT,D.Base_Exchange_Rate_On,GL_Budget_SUM_MSTR.MCTRXSTT,@CurrencyTranslationType) F  where GL_Budget_SUM_MSTR.EXGTBLID = D.EXGTBLID and D.CURNCYID=E.CURNCYID) GL00201Final  return END    
GO
GRANT SELECT ON  [dbo].[glFuncBudgetSummaryReportingCurrency] TO [DYNGRP]
GO