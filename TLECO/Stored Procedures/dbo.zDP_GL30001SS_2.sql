SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL30001SS_2] (@ACTINDX int) AS  set nocount on SELECT TOP 1  TranslationCurrencyID, HSTYEAR, JRNENTRY, SOURCDOC, REFRENCE, TRXDATE, TRXSORCE, ACTINDX, SEQNUMBR, PERIODID, Ledger_ID, CURNCYID, Original_Exchange_Rate, ORGNTSRC, CRDTAMNT, DEBITAMT, ORCRDAMT, ORDBTAMT, TranslationCreditAmount, TranslationDebitAmount, CURRNIDX, DECPLCUR, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, CurrencyTranslationType, Identity_Column, DEX_ROW_ID FROM .GL30001 WHERE ACTINDX = @ACTINDX ORDER BY ACTINDX ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL30001SS_2] TO [DYNGRP]
GO
