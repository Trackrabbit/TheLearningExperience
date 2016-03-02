SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glYECCreateBBFTranslationOpen]  @I_sYear smallint = NULL,  @I_sNext_Year smallint = NULL,  @I_tMCRegistered tinyint  = NULL,  @I_cFunctional_Currency char(15) = NULL,  @I_cEuroCurrency char(15) = NULL,  @I_tEuroEnabled tinyint  = NULL,  @I_tFunctionalEnabled tinyint  = NULL,  @I_cRate_Type_ID char(15) = NULL,  @I_cExchange_Table_ID char(15) = NULL,  @I_Journal_Entry int   = NULL,  @I_LedgerID int   = NULL,  @I_cNext_Trx_Source char(13) = NULL,  @I_cBBF varchar(255) = NULL,  @I_cBalance_Brought_Forward varchar(255) = NULL,  @I_cCLOSE varchar(255) = NULL,  @I_dYearEndDate datetime = NULL,  @I_dYearPeriodZeroDate datetime = NULL,  @I_tKeepingTRXHistory tinyint  = NULL,  @I_UNIT_ACCT int  = NULL,  @I_BAL_SHEET int  = NULL,  @MC_NOEURO int  = NULL,  @MC_NONDENOM_TO_NONDENOM int  = NULL,  @MC_NONDENOM_TO_EURO int  = NULL,  @MC_NONDENOM_TO_DENOM int  = NULL,  @MC_DENOM_TO_NONDENOM int  = NULL,  @MC_DENOM_TO_DENOM int  = NULL,  @MC_DENOM_TO_EURO int  = NULL,  @MC_EURO_TO_DENOM int  = NULL,  @MC_EURO_TO_NONDENOM int  = NULL,  @MULTIPLY int  = NULL,  @DIVIDE int  = NULL,  @O_SQL_Error_State int  = NULL output  as  declare @iStatus int,  @iError int,  @TranslationExists int,  @FALSE int,  @TRUE int,  @BBFExist smallint,  @cDBName char(5),  @MaxCurrency numeric(19,5)  select @O_SQL_Error_State = 0  if  @I_sYear is NULL or  @I_sNext_Year is NULL or  @I_tMCRegistered is NULL or  @I_cFunctional_Currency is NULL or  @I_cEuroCurrency is NULL or  @I_tEuroEnabled is NULL or  @I_tFunctionalEnabled is NULL or  @I_cRate_Type_ID is NULL or  @I_cExchange_Table_ID is NULL or  @I_Journal_Entry is NULL or  @I_LedgerID is NULL or  @I_cNext_Trx_Source is NULL or  @I_cBBF is NULL or   @I_cBalance_Brought_Forward is NULL or   @I_cCLOSE is NULL or  @I_dYearEndDate is NULL or  @I_tKeepingTRXHistory is NULL or  @I_UNIT_ACCT is NULL or  @I_BAL_SHEET is NULL or  @MC_NOEURO is NULL or  @MC_NONDENOM_TO_NONDENOM is NULL or  @MC_NONDENOM_TO_EURO is NULL or  @MC_NONDENOM_TO_DENOM is NULL or  @MC_DENOM_TO_NONDENOM is NULL or  @MC_DENOM_TO_DENOM is NULL or  @MC_DENOM_TO_EURO is NULL or  @MC_EURO_TO_DENOM is NULL or  @MC_EURO_TO_NONDENOM is NULL or   @MULTIPLY is NULL or   @DIVIDE is NULL  begin  select @O_SQL_Error_State = 20856  return  end   select @iStatus = 0,  @iError = 0,  @TranslationExists = 0,  @FALSE = 0,  @TRUE = 1,  @BBFExist = 0,  @MaxCurrency = 99999999999999.99999  select @cDBName = db_name()  if exists(select 1 from MC40600)  select @TranslationExists = 1 else  select @TranslationExists = @FALSE  if @TranslationExists = @FALSE   return  insert into  GL20001  (TranslationCurrencyID,  OPENYEAR,  JRNENTRY,  SOURCDOC,  REFRENCE,  TRXDATE,  TRXSORCE,   ACTINDX,  SEQNUMBR,  PERIODID,  Ledger_ID,  CURNCYID,  Original_Exchange_Rate,  ORGNTSRC,  CRDTAMNT,  DEBITAMT,  ORCRDAMT,  ORDBTAMT,  TranslationCreditAmount,  TranslationDebitAmount,  CURRNIDX,  DECPLCUR,  RATETPID,  EXGTBLID,  XCHGRATE,  EXCHDATE,  TIME1,  RTCLCMTD,  DENXRATE,  MCTRXSTT,  CurrencyTranslationType,  Identity_Column ) select   TranslationCurrencyID,  @I_sNext_Year,  @I_Journal_Entry,  @I_cBBF,  @I_cBalance_Brought_Forward,  @I_dYearEndDate,  @I_cNext_Trx_Source,  ACTINDX,  0,    0,    Ledger_ID,  CURNCYID,  max(Original_Exchange_Rate),  @I_cCLOSE,  case        when SUM(DEBITAMT) <= SUM(CRDTAMNT) then  -1 * (SUM(DEBITAMT) - SUM(CRDTAMNT))  else  0.0  end,  case        when SUM(DEBITAMT) > SUM(CRDTAMNT) then  SUM(DEBITAMT) - SUM(CRDTAMNT)  else  0.0  end,  case       when SUM(ORDBTAMT) <= SUM(ORCRDAMT) then  -1 * (SUM(ORDBTAMT) - SUM(ORCRDAMT))  else  0.0  end,  case       when SUM(ORDBTAMT) > SUM(ORCRDAMT) then  SUM(ORDBTAMT) - SUM(ORCRDAMT)  else  0.0  end,  case   when SUM(TranslationDebitAmount) <= SUM(TranslationCreditAmount) and SUM(TranslationCreditAmount) - SUM(TranslationDebitAmount) <= @MaxCurrency then  -1 * (SUM(TranslationDebitAmount) - sum(TranslationCreditAmount))  when SUM(TranslationDebitAmount) <= SUM(TranslationCreditAmount) then  @MaxCurrency  else  0.0  end,  case       when SUM(TranslationDebitAmount) > SUM(TranslationCreditAmount) and SUM(TranslationDebitAmount) - SUM(TranslationCreditAmount) <= @MaxCurrency then  SUM(TranslationDebitAmount-TranslationCreditAmount)  when SUM(TranslationDebitAmount) > SUM(TranslationCreditAmount) then  @MaxCurrency  else  0.0  end,  max(CURRNIDX),  max(DECPLCUR),  @I_cRate_Type_ID,   max(EXGTBLID),  case   when SUM(TranslationDebitAmount) <= SUM(TranslationCreditAmount) and sum(TranslationCreditAmount) - SUM(TranslationDebitAmount) > @MaxCurrency then  0.0  when SUM(TranslationDebitAmount) > SUM(TranslationCreditAmount) and SUM(TranslationDebitAmount) - SUM(TranslationCreditAmount) > @MaxCurrency then  0.0  else   min(TranslationExchangeRate)  end,  0 as EXCHDATE,  0 as TIME1,  max(RTCLCMTD),  max(DENXRATE),  max(MCTRXSTT),  max(CurrencyTranslationType),  0    from ( select  GLFinal.TranslationCurrencyID,  GLFinal.OPENYEAR,  GLFinal.JRNENTRY,  GLFinal.SOURCDOC,  GLFinal.REFRENCE,  GLFinal.TRXDATE,  GLFinal.TRXSORCE,  GLFinal.ACTINDX,  GLFinal.SEQNUMBR,  GLFinal.PERIODID,  GLFinal.Ledger_ID,  GLFinal.CURNCYID,  GLFinal.Original_Exchange_Rate,  GLFinal.ORGNTSRC,  isnull(GLFinal.CRDTAMNT,0) as CRDTAMNT,  isnull(GLFinal.DEBITAMT,0) as DEBITAMT,  isnull(GLFinal.ORCRDAMT,0) as ORCRDAMT,  isnull(GLFinal.ORDBTAMT,0) as ORDBTAMT,  isnull(GLFinal.TranslationCreditAmount, 0) as TranslationCreditAmount,  isnull(GLFinal.TranslationDebitAmount, 0) as TranslationDebitAmount,  isnull(GLFinal.CURRNIDX, MC40200.CURRNIDX) as CURRNIDX,  isnull(GLFinal.DECPLCUR, (MC40200.DECPLCUR - 1)) as DECPLCUR,  '' as RATETPID,    isnull(GLFinal.EXGTBLID,'')as EXGTBLID,  isnull(GLFinal.XCHGRATE, 0) as TranslationExchangeRate,  isnull(GLFinal.EXCHDATE, 0) as EXCHDATE,  isnull(GLFinal.TIME1, 0) as TIME1,  isnull(GLFinal.RTCLCMTD, isnull(MC40300.RTCLCMTD, 0)) as RTCLCMTD,  isnull(GLFinal.DENXRATE, dbo.mcFuncGetDenExchRate(GLFinal.TranslationCurrencyID,isnull(GLFinal.RTCLCMTD, isnull(MC40300.RTCLCMTD, 0)))) as DENXRATE,  GLFinal.MCTRXSTT,  GLFinal.CurrencyTranslationType  from (select  GLBBFMerge.TranslationCurrencyID,  GLBBFMerge.OPENYEAR,  GLBBFMerge.JRNENTRY,  GLBBFMerge.SOURCDOC,  GLBBFMerge.REFRENCE,  GLBBFMerge.TRXDATE,  GLBBFMerge.TRXSORCE,  GLBBFMerge.ACTINDX,  GLBBFMerge.SEQNUMBR,  GLBBFMerge.PERIODID,  GLBBFMerge.Ledger_ID,  GLBBFMerge.CURNCYID,  GLBBFMerge.Original_Exchange_Rate,  GLBBFMerge.ORGNTSRC,  GLBBFMerge.CRDTAMNT,  GLBBFMerge.DEBITAMT,  GLBBFMerge.ORCRDAMT,  GLBBFMerge.ORDBTAMT,  isnull(GLBBF.TranslationCreditAmount,GLBBFMerge.CRDTAMNT) as TranslationCreditAmount,  isnull(GLBBF.TranslationDebitAmount, GLBBFMerge.DEBITAMT) as TranslationDebitAmount,  GLBBF.CURRNIDX,   GLBBF.DECPLCUR,  '' as RATETPID,    isnull(GLBBF.EXGTBLID, GLBBFMerge.EXGTBLID) as EXGTBLID,  GLBBF.XCHGRATE,  GLBBF.EXCHDATE,  GLBBF.TIME1,  GLBBF.RTCLCMTD,  GLBBF.DENXRATE,  isnull(GLBBF.MCTRXSTT, GLBBFMerge.MCTRXSTT) as MCTRXSTT,  GLBBFMerge.CurrencyTranslationType   from (select GLTRX.OPENYEAR,  GLTRX.JRNENTRY,  GLTRX.SOURCDOC,  GLTRX.REFRENCE,  GLTRX.TRXDATE,  GLTRX.TRXSORCE,  GLTRX.ACTINDX,  GLTRX.SEQNUMBR,  GLTRX.PERIODID,  GLTRX.Ledger_ID,  GLTRX.CURNCYID,  GLTRX.XCHGRATE as Original_Exchange_Rate,  GLTRX.ORGNTSRC,  GLTRX.CRDTAMNT,  GLTRX.DEBITAMT,  GLTRX.ORCRDAMT,  GLTRX.ORDBTAMT,  MCTRAN.CURNCYID as TranslationCurrencyID,  MC.CurrencyTranslationType,  EXGTBLID=  case MC.CurrencyTranslationType  when 1 then MCTRAN.AverageExchangeTableID  when 3 then MCTRAN.HistoricalExchgTableID  end,  dbo.mcFuncGetMCTrxState(MCTRAN.CURNCYID  ) as MCTRXSTT,  GLMSTR.ACTDESCR,  GLMSTR.ACCATNUM  from GL20000 GLTRX, MC40600 MCTRAN, MC00200 MC, GL00100 GLMSTR  where GLTRX.ACTINDX = MC.ACTINDX and MC.CURNCYID = ''  and GLTRX.ACTINDX = GLMSTR.ACTINDX  and (GLMSTR.ACCTTYPE = @I_UNIT_ACCT   or GLMSTR.PSTNGTYP = @I_BAL_SHEET )  and GLTRX.Ledger_ID = @I_LedgerID  and (MC.CurrencyTranslationType = 1 or MC.CurrencyTranslationType = 3)  and GLTRX.OPENYEAR = @I_sYear   and GLTRX.TRXDATE = @I_dYearPeriodZeroDate   ) GLBBFMerge  left outer join (select  BBF.ACTINDX,  BBF.JRNENTRY,  BBF.CURNCYID,  BBF.Ledger_ID,  BBF.OPENYEAR,  BBF.TRXDATE,  BBF.SEQNUMBR,  BBF.TranslationCurrencyID,  BBF.TranslationCreditAmount,  BBF.TranslationDebitAmount,  BBF.CURRNIDX,  BBF.DECPLCUR,  BBF.EXGTBLID,  BBF.XCHGRATE,  BBF.EXCHDATE,  BBF.TIME1,  BBF.RTCLCMTD,  BBF.DENXRATE,  BBF.MCTRXSTT,  BBF.Identity_Column  from GL20001 BBF   where OPENYEAR = @I_sYear  and TRXDATE = @I_dYearPeriodZeroDate   ) GLBBF  on GLBBF.ACTINDX = GLBBFMerge.ACTINDX and GLBBF.JRNENTRY = GLBBFMerge.JRNENTRY and GLBBF.CURNCYID = GLBBFMerge.CURNCYID   and GLBBF.OPENYEAR = GLBBFMerge.OPENYEAR and GLBBF.TRXDATE = GLBBFMerge.TRXDATE and GLBBF.SEQNUMBR = GLBBFMerge.SEQNUMBR   and GLBBF.Ledger_ID = GLBBFMerge.Ledger_ID and GLBBF.TranslationCurrencyID = GLBBFMerge.TranslationCurrencyID    ) GLFinal  left outer join DYNAMICS..MC40300 MC40300  on (GLFinal.TranslationCurrencyID = MC40300.CURNCYID and GLFinal.EXGTBLID = MC40300.EXGTBLID)  join DYNAMICS..MC40200 MC40200  on GLFinal.TranslationCurrencyID = MC40200.CURNCYID union  select   GLTRXVIEW.TranslationCurrencyID,   GLTRXVIEW.OPENYEAR,  GLTRXVIEW.JRNENTRY,  GLTRXVIEW.SOURCDOC,  GLTRXVIEW.REFRENCE,  GLTRXVIEW.TRXDATE,  GLTRXVIEW.TRXSORCE,  GLTRXVIEW.ACTINDX,  GLTRXVIEW.SequenceNumber,  GLTRXVIEW.PERIODID,  GLTRXVIEW.Ledger_ID,  GLTRXVIEW.CURNCYID,  GLTRXVIEW.Original_Exchange_Rate,  GLTRXVIEW.ORGNTSRC,  GLTRXVIEW.CRDTAMNT,  GLTRXVIEW.DEBITAMT,  GLTRXVIEW.ORCRDAMT,  GLTRXVIEW.ORDBTAMT,  isnull(GLTRXVIEW.TranslationCreditAmount, 0) as TranslationCreditAmount,  isnull(GLTRXVIEW.TranslationDebitAmount, 0) as TranslationDebitAmount,  GLTRXVIEW.CURRNIDX,  GLTRXVIEW.DECPLCUR,  GLTRXVIEW.RATETPID,  GLTRXVIEW.EXGTBLID,  GLTRXVIEW.TranslationExchangeRate,  GLTRXVIEW.EXCHDATE,  GLTRXVIEW.TIME1,  GLTRXVIEW.RTCLCMTD,  GLTRXVIEW.DENXRATE,  GLTRXVIEW.MCTRXSTT,  GLTRXVIEW.CurrencyTranslationType from  GL20000CurrencyTranslationView GLTRXVIEW,  GL00100 GLMSTR where  GLTRXVIEW.ACTINDX = GLMSTR.ACTINDX  and GLTRXVIEW.OPENYEAR = @I_sYear  and GLTRXVIEW.TRXDATE <> @I_dYearPeriodZeroDate   and Ledger_ID = @I_LedgerID  and (GLMSTR.ACCTTYPE = @I_UNIT_ACCT   or GLMSTR.PSTNGTYP = @I_BAL_SHEET ) ) as FINAL_GLTRXResults  group by TranslationCurrencyID, ACTINDX, Ledger_ID, CURNCYID  delete  GL20001 where  OPENYEAR = @I_sNext_Year  and @I_LedgerID = Ledger_ID  and SOURCDOC = @I_cBBF  and TranslationDebitAmount = 0.00  and TranslationCreditAmount = 0.00  and DEBITAMT = 0.00  and CRDTAMNT = 0.00  update GL20001 set Identity_Column = isnull(GL20000.DEX_ROW_ID, 0),  Original_Exchange_Rate = GL20000.XCHGRATE from GL20000 where GL20001.OPENYEAR = @I_sNext_Year  and GL20001.JRNENTRY = @I_Journal_Entry  and GL20001.Ledger_ID = @I_LedgerID  and GL20000.SOURCDOC = @I_cBBF  and GL20001.OPENYEAR = GL20000.OPENYEAR  and GL20001.ACTINDX = GL20000.ACTINDX  and GL20001.Ledger_ID = GL20000.Ledger_ID  and GL20001.CURNCYID = GL20000.CURNCYID   and GL20001.JRNENTRY = GL20000.JRNENTRY  and GL20001.TRXDATE = GL20000.TRXDATE  and GL20001.SEQNUMBR = GL20000.SEQNUMBR  update  GL20001 set  RATETPID = @I_cRate_Type_ID,  XCHGRATE =  dbo.mcFuncGLYECCalcNewExchangeRate(  CRDTAMNT,  DEBITAMT,  TranslationCreditAmount,  TranslationDebitAmount,  TranslationCurrencyID,   RTCLCMTD,  @I_cFunctional_Currency,  @I_cEuroCurrency,  @I_tEuroEnabled,  @I_tFunctionalEnabled,  @MC_NOEURO,  @MC_NONDENOM_TO_NONDENOM,  @MC_NONDENOM_TO_EURO,  @MC_NONDENOM_TO_DENOM,  @MC_DENOM_TO_NONDENOM,  @MC_DENOM_TO_DENOM,  @MC_DENOM_TO_EURO,  @MC_EURO_TO_DENOM,  @MC_EURO_TO_NONDENOM) where  OPENYEAR = @I_sNext_Year  and Ledger_ID = @I_LedgerID  and GL20001.SOURCDOC = @I_cBBF  and TranslationCurrencyID <> @I_cFunctional_Currency  and XCHGRATE <> 0.0  if @I_tKeepingTRXHistory = @TRUE  begin  insert into  GL30001  (TranslationCurrencyID,  HSTYEAR,  JRNENTRY,  SOURCDOC,  REFRENCE,  TRXDATE,  TRXSORCE,   ACTINDX,  SEQNUMBR,  PERIODID,  Ledger_ID,  CURNCYID,  Original_Exchange_Rate,  ORGNTSRC,  CRDTAMNT,  DEBITAMT,  ORCRDAMT,  ORDBTAMT,  TranslationCreditAmount,  TranslationDebitAmount,  CURRNIDX,  DECPLCUR,  RATETPID,  EXGTBLID,  XCHGRATE,  EXCHDATE,  TIME1,  RTCLCMTD,  DENXRATE,  MCTRXSTT,  CurrencyTranslationType,  Identity_Column)  select  TranslationCurrencyID,  OPENYEAR,  JRNENTRY,  SOURCDOC,  REFRENCE,  TRXDATE,  TRXSORCE,   ACTINDX,  SEQNUMBR,  PERIODID,  Ledger_ID,  CURNCYID,  Original_Exchange_Rate,  ORGNTSRC,  CRDTAMNT,  DEBITAMT,  ORCRDAMT,  ORDBTAMT,  TranslationCreditAmount,  TranslationDebitAmount,  CURRNIDX,  DECPLCUR,  RATETPID,  EXGTBLID,  XCHGRATE,  EXCHDATE,  TIME1,  RTCLCMTD,  DENXRATE,  MCTRXSTT,  CurrencyTranslationType,  Identity_Column  from  GL20001   where  OPENYEAR = @I_sYear  and Ledger_ID = @I_LedgerID  and TRXDATE = @I_dYearPeriodZeroDate  end  delete   from GL20001 where  OPENYEAR = @I_sYear  and Ledger_ID = @I_LedgerID  and TRXDATE = @I_dYearPeriodZeroDate  return (@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[glYECCreateBBFTranslationOpen] TO [DYNGRP]
GO
