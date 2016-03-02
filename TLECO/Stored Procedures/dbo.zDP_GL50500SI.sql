SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL50500SI] (@USERID char(15), @ORD int, @SGMNTID char(67), @Ledger_ID smallint, @CURNCYID char(15), @TranslationCurrencyID char(15), @CURRNIDX smallint, @DECPLCUR smallint, @RATETPID char(15), @EXGTBLID char(15), @XCHGRATE numeric(19,7), @RTCLCMTD smallint, @DENXRATE numeric(19,7), @MCTRXSTT smallint, @CurrencyTranslationType smallint, @REARNAMT numeric(19,5), @ORIGAMT numeric(19,5), @Translation_Amount numeric(19,5), @RERINDX int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .GL50500 (USERID, ORD, SGMNTID, Ledger_ID, CURNCYID, TranslationCurrencyID, CURRNIDX, DECPLCUR, RATETPID, EXGTBLID, XCHGRATE, RTCLCMTD, DENXRATE, MCTRXSTT, CurrencyTranslationType, REARNAMT, ORIGAMT, Translation_Amount, RERINDX) VALUES ( @USERID, @ORD, @SGMNTID, @Ledger_ID, @CURNCYID, @TranslationCurrencyID, @CURRNIDX, @DECPLCUR, @RATETPID, @EXGTBLID, @XCHGRATE, @RTCLCMTD, @DENXRATE, @MCTRXSTT, @CurrencyTranslationType, @REARNAMT, @ORIGAMT, @Translation_Amount, @RERINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL50500SI] TO [DYNGRP]
GO
