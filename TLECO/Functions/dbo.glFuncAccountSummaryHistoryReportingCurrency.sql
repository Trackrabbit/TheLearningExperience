SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[glFuncAccountSummaryHistoryReportingCurrency] (  @TranslationCurrency char(15),  @TranslationDate datetime,   @StartDate datetime,  @EndDate datetime )  returns @glAccountSumHist table (  ACTINDX int,  YEAR1 smallint,  CRDTAMNT numeric(22,5),  DEBITAMT numeric(22,5),  Ledger_ID smallint,  PERDBLNC numeric(22,5),  TranslationPeriodBalance numeric(22,5),  ACCATNUM smallint,  TranslationCurrencyID char(15),  CurrencyTranslationType smallint,  PERDENDT datetime,  TranslationExchangeRate numeric(19,7),  TranslationCreditAmount numeric(22,5),  TranslationDebitAmount numeric(22,5),  PERIODID smallint )  as BEGIN  if (select isnull((select KPGTRXHS from GL40000),0))=1  insert into @glAccountSumHist select   [GL10111Final].[ACTINDX],  [GL10111Final].[YEAR1],  [GL10111Final].[CRDTAMNT],  [GL10111Final].[DEBITAMT],  [GL10111Final].[Ledger_ID],  [GL10111Final].[PERDBLNC],  case GL10111Final.PERDBLNC  when 0.0 then  0.0  else  dbo.mcFuncCalculateAmountExtended([GL10111Final].[RTCLCMTD], 3,   [GL10111Final].[TranslationExchangeRate],  [GL10111Final].[DENXRATE],  [GL10111Final].[MCTRXSTT],  [GL10111Final].[DECPLCUR],   [GL10111Final].[PERDBLNC])  end as TranslationPeriodBalance,  [GL10111Final].[ACCATNUM],  [GL10111Final].[TranslationCurrencyID],  [GL10111Final].[CurrencyTranslationType],  [GL10111Final].[PERDENDT],  [GL10111Final].[TranslationExchangeRate],  case GL10111Final.CRDTAMNT  when 0.0 then  0.0  else  dbo.mcFuncCalculateAmountExtended([GL10111Final].[RTCLCMTD], 3,   [GL10111Final].[TranslationExchangeRate],  [GL10111Final].[DENXRATE],  [GL10111Final].[MCTRXSTT],  [GL10111Final].[DECPLCUR],   [GL10111Final].[CRDTAMNT])  end as TranslationCreditAmount,  case GL10111Final.DEBITAMT  when 0.0 then  0.0  else  dbo.mcFuncCalculateAmountExtended([GL10111Final].[RTCLCMTD], 3,   [GL10111Final].[TranslationExchangeRate],  [GL10111Final].[DENXRATE],  [GL10111Final].[MCTRXSTT],  [GL10111Final].[DECPLCUR],   [GL10111Final].[DEBITAMT])  end as TranslationDebitAmount,  [GL10111Final].[PERIODID] from (select   [GL_Account_SUM_MSTR].[YEAR1],   [GL_Account_SUM_MSTR].[ACTINDX],  [GL_Account_SUM_MSTR].[PERIODID],  [GL_Account_SUM_MSTR].[Ledger_ID],  [GL_Account_SUM_MSTR].[PERDBLNC],  [GL_Account_SUM_MSTR].[TranslationCurrencyID],  [GL_Account_SUM_MSTR].[ACCATNUM],  [GL_Account_SUM_MSTR].[EXGTBLID],  [GL_Account_SUM_MSTR].[PERDENDT],  [GL_Account_SUM_MSTR].[CRDTAMNT],  [GL_Account_SUM_MSTR].[DEBITAMT],   [GL_Account_SUM_MSTR].[CurrencyTranslationType],  F.XCHGRATE as TranslationExchangeRate,  E.[CURRNIDX],  (E.[DECPLCUR]-1) as DECPLCUR,  '' as RATETPID,   F.EXCHDATE,  F.TIME1,  D.[RTCLCMTD],  dbo.mcFuncGetDenExchRate(@TranslationCurrency,D.RTCLCMTD) as DENXRATE,  [GL_Account_SUM_MSTR].[MCTRXSTT] from DYNAMICS..MC40200 E, DYNAMICS..MC40300 D cross apply  (select distinct a.YEAR1, a.ACTINDX, a.PERIODID,  a.Ledger_ID, a.PERDBLNC,  @TranslationCurrency as TranslationCurrencyID, a.ACCATNUM,  a.CRDTAMNT, a.DEBITAMT,  c.CurrencyTranslationType,  b.CurrentExchangeTableID as EXGTBLID,  @TranslationDate as PERDENDT,  dbo.mcFuncGetMCTrxState(b.CURNCYID) as MCTRXSTT  from GL10111 a, MC40600 b, MC00200 c, SY40100 d  where c.CurrencyTranslationType =2  and a.ACTINDX=c.ACTINDX and c.CURNCYID=''  and b.CURNCYID=@TranslationCurrency  and a.YEAR1=d.YEAR1 and a.PERIODID=d.PERIODID and d.SERIES=2  and d.PERIODDT >=@StartDate and d.PERDENDT <=@EndDate) GL_Account_SUM_MSTR  cross apply dbo.mcFuncGetExchangeRateTable(GL_Account_SUM_MSTR.PERDENDT, GL_Account_SUM_MSTR.EXGTBLID, D.TRXDTDEF, D.DATELMTS,D.PRVDSLMT,D.Base_Exchange_Rate_On,GL_Account_SUM_MSTR.MCTRXSTT,GL_Account_SUM_MSTR.CurrencyTranslationType) F  where GL_Account_SUM_MSTR.EXGTBLID = D.EXGTBLID and D.CURNCYID=E.CURNCYID) GL10111Final  union  select distinct  a.ACTINDX,   YEAR1=HSTYEAR,  CRDTAMNT=sum(a.CRDTAMNT),  DEBITAMT=sum(a.DEBITAMT),  a.Ledger_ID,  PERDBLNC=sum(a.DEBITAMT-a.CRDTAMNT),  TranslationPeriodBalance=sum(a.TranslationDebitAmount-a.TranslationCreditAmount),  0 as ACCATNUM,  a.TranslationCurrencyID,  a.CurrencyTranslationType,  a.PERDENDT,  a.TranslationExchangeRate,  TranslationCreditAmount=sum(TranslationCreditAmount),  TranslationDebitAmount=sum(TranslationDebitAmount),  a.PERIODID  from GL30000CurrencyTranslationView a  where a.TranslationCurrencyID=@TranslationCurrency  and a.TRXDATE >=@StartDate and a.TRXDATE<=@EndDate  group by HSTYEAR,PERIODID,a.ACTINDX,Ledger_ID,TranslationCurrencyID,CurrencyTranslationType,  PERDENDT,TranslationExchangeRate  union  select distinct  a.ACTINDX,   YEAR1=a.HSTYEAR,  CRDTAMNT=sum(a.CRDTAMNT),  DEBITAMT=sum(a.DEBITAMT),  a.Ledger_ID,  PERDBLNC=sum(a.DEBITAMT-a.CRDTAMNT),  TranslationPeriodBalance=sum(a.TranslationDebitAmount-a.TranslationCreditAmount),  0 as ACCATNUM,  a.TranslationCurrencyID,  a.CurrencyTranslationType,  d.PERDENDT,  a.XCHGRATE as TranslationExchangeRate,  TranslationCreditAmount=sum(TranslationCreditAmount),  TranslationDebitAmount=sum(TranslationDebitAmount),  a.PERIODID  from GL30001 a, GL30000 b,(select distinct YEAR1,PERIODID,SERIES,PERIODDT,PERDENDT from SY40100) d  where a.HSTYEAR=b.HSTYEAR and a.JRNENTRY=b.JRNENTRY  and a.ACTINDX=b.ACTINDX and a.TRXDATE=b.TRXDATE and a.SEQNUMBR=b.SEQNUMBR  and a.HSTYEAR=d.YEAR1 and a.PERIODID=d.PERIODID and b.SERIES=d.SERIES  and a.TranslationCurrencyID=@TranslationCurrency and a.CURNCYID=b.CURNCYID  and a.TRXDATE >=@StartDate and a.TRXDATE<=@EndDate  group by a.HSTYEAR,a.PERIODID,a.ACTINDX,a.Ledger_ID,a.TranslationCurrencyID,  a.CurrencyTranslationType,a.CURNCYID,d.PERDENDT,a.XCHGRATE  else    insert into @glAccountSumHist select   [GL10111Final].[ACTINDX],  [GL10111Final].[YEAR1],  [GL10111Final].[CRDTAMNT],  [GL10111Final].[DEBITAMT],  [GL10111Final].[Ledger_ID],  [GL10111Final].[PERDBLNC],  case GL10111Final.PERDBLNC  when 0.0 then  0.0  else  dbo.mcFuncCalculateAmountExtended([GL10111Final].[RTCLCMTD], 3,   [GL10111Final].[TranslationExchangeRate],  [GL10111Final].[DENXRATE],  [GL10111Final].[MCTRXSTT],  [GL10111Final].[DECPLCUR],   [GL10111Final].[PERDBLNC])  end as TranslationPeriodBalance,  [GL10111Final].[ACCATNUM],  [GL10111Final].[TranslationCurrencyID],  [GL10111Final].[CurrencyTranslationType],  [GL10111Final].[PERDENDT],  [GL10111Final].[TranslationExchangeRate],  case GL10111Final.CRDTAMNT  when 0.0 then  0.0  else  dbo.mcFuncCalculateAmountExtended([GL10111Final].[RTCLCMTD], 3,   [GL10111Final].[TranslationExchangeRate],  [GL10111Final].[DENXRATE],  [GL10111Final].[MCTRXSTT],  [GL10111Final].[DECPLCUR],   [GL10111Final].[CRDTAMNT])  end as TranslationCreditAmount,  case GL10111Final.DEBITAMT  when 0.0 then  0.0  else  dbo.mcFuncCalculateAmountExtended([GL10111Final].[RTCLCMTD], 3,   [GL10111Final].[TranslationExchangeRate],  [GL10111Final].[DENXRATE],  [GL10111Final].[MCTRXSTT],  [GL10111Final].[DECPLCUR],   [GL10111Final].[DEBITAMT])  end as TranslationDebitAmount,  [GL10111Final].[PERIODID] from (select   [GL_Account_SUM_MSTR].[YEAR1],   [GL_Account_SUM_MSTR].[ACTINDX],  [GL_Account_SUM_MSTR].[PERIODID],  [GL_Account_SUM_MSTR].[Ledger_ID],  [GL_Account_SUM_MSTR].[PERDBLNC],  [GL_Account_SUM_MSTR].[TranslationCurrencyID],  [GL_Account_SUM_MSTR].[ACCATNUM],  [GL_Account_SUM_MSTR].[EXGTBLID],  [GL_Account_SUM_MSTR].[PERDENDT],  [GL_Account_SUM_MSTR].[CRDTAMNT],  [GL_Account_SUM_MSTR].[DEBITAMT],   [GL_Account_SUM_MSTR].[CurrencyTranslationType],  F.XCHGRATE as TranslationExchangeRate,  E.[CURRNIDX],  (E.[DECPLCUR]-1) as DECPLCUR,  '' as RATETPID,   F.EXCHDATE,  F.TIME1,  D.[RTCLCMTD],  dbo.mcFuncGetDenExchRate(@TranslationCurrency,D.RTCLCMTD) as DENXRATE,  [GL_Account_SUM_MSTR].[MCTRXSTT] from DYNAMICS..MC40200 E, DYNAMICS..MC40300 D cross apply  (select a.YEAR1, a.ACTINDX, a.PERIODID,  a.Ledger_ID, a.PERDBLNC,  @TranslationCurrency as TranslationCurrencyID, a.ACCATNUM,  a.CRDTAMNT, a.DEBITAMT,  c.CurrencyTranslationType,  EXGTBLID=  case c.CurrencyTranslationType  when 1 then b.AverageExchangeTableID  when 2 then b.CurrentExchangeTableID  when 3 then b.HistoricalExchgTableID  end,  PERDENDT=  case c.CurrencyTranslationType  when 1 then (SELECT CASE AVGCLMD WHEN 1 THEN d.PERDENDT ELSE (DATEADD(dd, -DAY(DATEADD(m,1,d.PERDENDT)), DATEADD(m,1,d.PERDENDT)))END AS A FROM MC40000)   when 2 then @TranslationDate  when 3 then d.PERDENDT  end,  dbo.mcFuncGetMCTrxState(b.CURNCYID) as MCTRXSTT  from GL10111 a, MC40600 b, MC00200 c, (select distinct YEAR1, PERIODID, PERIODDT, PERDENDT from SY40100) d  where a.ACTINDX=c.ACTINDX and c.CURNCYID=''  and b.CURNCYID=@TranslationCurrency  and a.YEAR1=d.YEAR1 and a.PERIODID=d.PERIODID  and d.PERIODDT >=@StartDate and d.PERDENDT <=@EndDate) GL_Account_SUM_MSTR  cross apply dbo.mcFuncGetExchangeRateTable(GL_Account_SUM_MSTR.PERDENDT, GL_Account_SUM_MSTR.EXGTBLID, D.TRXDTDEF, D.DATELMTS,D.PRVDSLMT,D.Base_Exchange_Rate_On,GL_Account_SUM_MSTR.MCTRXSTT,GL_Account_SUM_MSTR.CurrencyTranslationType) F  where GL_Account_SUM_MSTR.EXGTBLID = D.EXGTBLID and D.CURNCYID=E.CURNCYID) GL10111Final  return END    
GO
GRANT SELECT ON  [dbo].[glFuncAccountSummaryHistoryReportingCurrency] TO [DYNGRP]
GO