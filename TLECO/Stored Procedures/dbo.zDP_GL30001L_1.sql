SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL30001L_1] (@TranslationCurrencyID_RS char(15), @HSTYEAR_RS smallint, @ACTINDX_RS int, @Ledger_ID_RS smallint, @CURNCYID_RS char(15), @JRNENTRY_RS int, @TRXDATE_RS datetime, @SEQNUMBR_RS int, @TranslationCurrencyID_RE char(15), @HSTYEAR_RE smallint, @ACTINDX_RE int, @Ledger_ID_RE smallint, @CURNCYID_RE char(15), @JRNENTRY_RE int, @TRXDATE_RE datetime, @SEQNUMBR_RE int) AS  set nocount on IF @TranslationCurrencyID_RS IS NULL BEGIN SELECT TOP 25  TranslationCurrencyID, HSTYEAR, JRNENTRY, SOURCDOC, REFRENCE, TRXDATE, TRXSORCE, ACTINDX, SEQNUMBR, PERIODID, Ledger_ID, CURNCYID, Original_Exchange_Rate, ORGNTSRC, CRDTAMNT, DEBITAMT, ORCRDAMT, ORDBTAMT, TranslationCreditAmount, TranslationDebitAmount, CURRNIDX, DECPLCUR, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, CurrencyTranslationType, Identity_Column, DEX_ROW_ID FROM .GL30001 ORDER BY TranslationCurrencyID DESC, HSTYEAR DESC, ACTINDX DESC, Ledger_ID DESC, CURNCYID DESC, JRNENTRY DESC, TRXDATE DESC, SEQNUMBR DESC END ELSE IF @TranslationCurrencyID_RS = @TranslationCurrencyID_RE BEGIN SELECT TOP 25  TranslationCurrencyID, HSTYEAR, JRNENTRY, SOURCDOC, REFRENCE, TRXDATE, TRXSORCE, ACTINDX, SEQNUMBR, PERIODID, Ledger_ID, CURNCYID, Original_Exchange_Rate, ORGNTSRC, CRDTAMNT, DEBITAMT, ORCRDAMT, ORDBTAMT, TranslationCreditAmount, TranslationDebitAmount, CURRNIDX, DECPLCUR, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, CurrencyTranslationType, Identity_Column, DEX_ROW_ID FROM .GL30001 WHERE TranslationCurrencyID = @TranslationCurrencyID_RS AND HSTYEAR BETWEEN @HSTYEAR_RS AND @HSTYEAR_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND TRXDATE BETWEEN @TRXDATE_RS AND @TRXDATE_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY TranslationCurrencyID DESC, HSTYEAR DESC, ACTINDX DESC, Ledger_ID DESC, CURNCYID DESC, JRNENTRY DESC, TRXDATE DESC, SEQNUMBR DESC END ELSE BEGIN SELECT TOP 25  TranslationCurrencyID, HSTYEAR, JRNENTRY, SOURCDOC, REFRENCE, TRXDATE, TRXSORCE, ACTINDX, SEQNUMBR, PERIODID, Ledger_ID, CURNCYID, Original_Exchange_Rate, ORGNTSRC, CRDTAMNT, DEBITAMT, ORCRDAMT, ORDBTAMT, TranslationCreditAmount, TranslationDebitAmount, CURRNIDX, DECPLCUR, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, CurrencyTranslationType, Identity_Column, DEX_ROW_ID FROM .GL30001 WHERE TranslationCurrencyID BETWEEN @TranslationCurrencyID_RS AND @TranslationCurrencyID_RE AND HSTYEAR BETWEEN @HSTYEAR_RS AND @HSTYEAR_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND TRXDATE BETWEEN @TRXDATE_RS AND @TRXDATE_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY TranslationCurrencyID DESC, HSTYEAR DESC, ACTINDX DESC, Ledger_ID DESC, CURNCYID DESC, JRNENTRY DESC, TRXDATE DESC, SEQNUMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL30001L_1] TO [DYNGRP]
GO