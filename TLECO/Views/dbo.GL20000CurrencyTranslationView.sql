SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[GL20000CurrencyTranslationView] AS   select   [GL20000Final].[OPENYEAR],  [GL20000Final].[ACTINDX],  [GL20000Final].[CRDTAMNT],  [GL20000Final].[DEBITAMT],  [GL20000Final].[ORCRDAMT],  [GL20000Final].[ORDBTAMT],  [GL20000Final].[TRXDATE],  [GL20000Final].[DSCRIPTN],  [GL20000Final].[REFRENCE],  [GL20000Final].[CURNCYID],  [GL20000Final].[Original_Exchange_Rate],  [GL20000Final].[JRNENTRY],  [GL20000Final].[TRXSORCE],  [GL20000Final].[SOURCDOC],  [GL20000Final].[ORDOCNUM],  [GL20000Final].[ORTRXSRC],  [GL20000Final].[ORMSTRID],  [GL20000Final].[ORMSTRNM],  [GL20000Final].[ORTRXTYP],  [GL20000Final].[ORGNTSRC],  [GL20000Final].[SERIES],  [GL20000Final].[VOIDED],  [GL20000Final].[Ledger_ID],  [GL20000Final].[TranslationCurrencyID],  [GL20000Final].[CurrencyTranslationType],  [GL20000Final].[PERDENDT],  [GL20000Final].[TranslationExchangeRate],  case GL20000Final.CRDTAMNT  when 0.0 then  0.0  else  dbo.mcFuncCalculateAmountExtended([GL20000Final].[RTCLCMTD], 3,   [GL20000Final].[TranslationExchangeRate],  [GL20000Final].[DENXRATE],  [GL20000Final].[MCTRXSTT],  [GL20000Final].[DECPLCUR],   [GL20000Final].[CRDTAMNT])  end as TranslationCreditAmount,  case GL20000Final.DEBITAMT  when 0.0 then  0.0  else  dbo.mcFuncCalculateAmountExtended([GL20000Final].[RTCLCMTD], 3,   [GL20000Final].[TranslationExchangeRate],  [GL20000Final].[DENXRATE],  [GL20000Final].[MCTRXSTT],  [GL20000Final].[DECPLCUR],   [GL20000Final].[DEBITAMT])  end as TranslationDebitAmount,  [GL20000Final].[SequenceNumber],  [GL20000Final].[PERIODID],  [GL20000Final].[CURRNIDX],  [GL20000Final].[DECPLCUR],  [GL20000Final].[RATETPID],  [GL20000Final].[EXGTBLID],  [GL20000Final].[EXCHDATE],  [GL20000Final].[TIME1],  [GL20000Final].[RTCLCMTD],  [GL20000Final].[DENXRATE],  [GL20000Final].[MCTRXSTT],  [GL20000Final].[Adjustment_Transaction] from (select distinct  [GL_YTD_TRX_OPEN].[OPENYEAR],   [GL_YTD_TRX_OPEN].[ACTINDX],  [GL_YTD_TRX_OPEN].[CRDTAMNT],  [GL_YTD_TRX_OPEN].[DEBITAMT],  [GL_YTD_TRX_OPEN].[ORCRDAMT],  [GL_YTD_TRX_OPEN].[ORDBTAMT],  [GL_YTD_TRX_OPEN].[TRXDATE],  [GL_YTD_TRX_OPEN].[DSCRIPTN],  [GL_YTD_TRX_OPEN].[REFRENCE],  [GL_YTD_TRX_OPEN].[CURNCYID],  [GL_YTD_TRX_OPEN].[XCHGRATE] as Original_Exchange_Rate,   [GL_YTD_TRX_OPEN].[JRNENTRY],  [GL_YTD_TRX_OPEN].[TRXSORCE],  [GL_YTD_TRX_OPEN].[SOURCDOC],  [GL_YTD_TRX_OPEN].[ORDOCNUM],  [GL_YTD_TRX_OPEN].[ORTRXSRC],  [GL_YTD_TRX_OPEN].[ORMSTRID],  [GL_YTD_TRX_OPEN].[ORMSTRNM],  [GL_YTD_TRX_OPEN].[ORTRXTYP],  [GL_YTD_TRX_OPEN].[ORGNTSRC],  [GL_YTD_TRX_OPEN].[SERIES],  [GL_YTD_TRX_OPEN].[VOIDED],  [GL_YTD_TRX_OPEN].[Ledger_ID],  [GL_YTD_TRX_OPEN].[TranslationCurrencyID],  [GL_YTD_TRX_OPEN].[CurrencyTranslationType],  [GL_YTD_TRX_OPEN].[PERDENDT],  F.XCHGRATE as TranslationExchangeRate,  [GL_YTD_TRX_OPEN].[SEQNUMBR] as SequenceNumber,  [GL_YTD_TRX_OPEN].[PERIODID],  E.[CURRNIDX],  (E.[DECPLCUR]-1) as DECPLCUR,  [GL_YTD_TRX_OPEN].[RATETPID],  [GL_YTD_TRX_OPEN].[EXGTBLID],  F.[EXCHDATE],  F.[TIME1],  D.[RTCLCMTD],  dbo.mcFuncGetDenExchRate(GL_YTD_TRX_OPEN.TranslationCurrencyID,D.RTCLCMTD) as DENXRATE,  [GL_YTD_TRX_OPEN].[MCTRXSTT],  [GL_YTD_TRX_OPEN].[Adjustment_Transaction] from DYNAMICS..MC40200 E, DYNAMICS..MC40300 D cross apply   (select a.OPENYEAR, a.ACTINDX, a.CRDTAMNT, a.DEBITAMT,  a.ORCRDAMT, a.ORDBTAMT, a.TRXDATE, a.DSCRIPTN,  a.REFRENCE, a.CURNCYID, a.XCHGRATE, a.JRNENTRY,   a.TRXSORCE, a.SOURCDOC, a.ORDOCNUM, a.ORTRXSRC,  a.ORMSTRID, a.ORMSTRNM, a.ORTRXTYP, a.ORGNTSRC, a.SERIES,  a.VOIDED, a.Ledger_ID, b.CURNCYID as TranslationCurrencyID, a.CurrencyTranslationType,  a.PERDENDT,  a.SEQNUMBR, a.PERIODID,   EXGTBLID=  case a.CurrencyTranslationType  when 1 then b.AverageExchangeTableID  when 3 then b.HistoricalExchgTableID  end,  dbo.mcFuncGetMCTrxState(b.CURNCYID) as MCTRXSTT,  a.RATETPID, a.EXCHDATE, a.TIME1, a.Adjustment_Transaction,  case a.CurrencyTranslationType  when 1  then (SELECT CASE AVGCLMD WHEN 1 THEN a.PERDENDT ELSE (DATEADD(dd, -DAY(DATEADD(m,1,a.TRXDATE)), DATEADD(m,1,a.TRXDATE)))END AS A FROM MC40000)  when 3  then a.TRXDATE  end as ExchangeRateDate  from   (select x.OPENYEAR, x.ACTINDX, x.CRDTAMNT, x.DEBITAMT,  x.ORCRDAMT, x.ORDBTAMT, x.TRXDATE, x.DSCRIPTN,  x.REFRENCE, x.CURNCYID, x.XCHGRATE, x.JRNENTRY,   x.TRXSORCE, x.SOURCDOC, x.ORDOCNUM, x.ORTRXSRC,  x.ORMSTRID, x.ORMSTRNM, x.ORTRXTYP, x.ORGNTSRC, x.SERIES,  x.VOIDED, x.Ledger_ID, y.CurrencyTranslationType,  dbo.glFuncGetPeriodEndDate(x.OPENYEAR,x.SERIES,dbo.glFuncGetPeriodID(x.TRXDATE,x.OPENYEAR,x.SERIES)) as PERDENDT,  x.SEQNUMBR, dbo.glFuncGetPeriodID(x.TRXDATE,x.OPENYEAR,x.SERIES) as PERIODID,   x.RATETPID, x.EXCHDATE, x.TIME1, x.Adjustment_Transaction from GL20000 x, MC00200 y   where y.CurrencyTranslationType <> 2 and x.ACTINDX=y.ACTINDX and y.CURNCYID='') a,  MC40600 b) GL_YTD_TRX_OPEN   cross apply (select top 1 * from dbo.mcFuncGetExchangeRateTable(GL_YTD_TRX_OPEN.ExchangeRateDate, GL_YTD_TRX_OPEN.EXGTBLID,   D.TRXDTDEF, D.DATELMTS,D.PRVDSLMT,D.Base_Exchange_Rate_On, GL_YTD_TRX_OPEN.MCTRXSTT,  GL_YTD_TRX_OPEN.CurrencyTranslationType) order by EXCHDATE, TIME1 desc) F   where GL_YTD_TRX_OPEN.PERIODID<>0 and GL_YTD_TRX_OPEN.EXGTBLID = D.EXGTBLID and D.CURNCYID=E.CURNCYID) GL20000Final    
GO
GRANT SELECT ON  [dbo].[GL20000CurrencyTranslationView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL20000CurrencyTranslationView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL20000CurrencyTranslationView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL20000CurrencyTranslationView] TO [DYNGRP]
GO
