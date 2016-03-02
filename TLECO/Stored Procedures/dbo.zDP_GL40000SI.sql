SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40000SI] (@UNIQKEY char(1), @NJRNLENT int, @RERINDX int, @LSTCLSDT datetime, @TRERCLSG tinyint, @DIVACTSG smallint, @BLNCDSPL smallint, @KPGACHST tinyint, @KPGTRXHS tinyint, @AHSTPSTG tinyint, @USRDFPR1 char(15), @USRDRPR2 char(15), @USRDRPR3 char(15), @USRDRPR4 char(15), @UPDTACCEL tinyint, @Posting_Number_Type smallint, @Delete_Saved_Trx tinyint, @Void_Sub_Trx tinyint, @Correct_IC_Trx tinyint, @Allow_Reporting_Ledgers tinyint, @UseLedgersForAcctBalance binary(4), @NXTBUDJRLENT int, @KPBUDTRXHIST tinyint, @NextReconciliationNumber int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .GL40000 (UNIQKEY, NJRNLENT, RERINDX, LSTCLSDT, TRERCLSG, DIVACTSG, BLNCDSPL, KPGACHST, KPGTRXHS, AHSTPSTG, USRDFPR1, USRDRPR2, USRDRPR3, USRDRPR4, UPDTACCEL, Posting_Number_Type, Delete_Saved_Trx, Void_Sub_Trx, Correct_IC_Trx, Allow_Reporting_Ledgers, UseLedgersForAcctBalance, NXTBUDJRLENT, KPBUDTRXHIST, NextReconciliationNumber) VALUES ( @UNIQKEY, @NJRNLENT, @RERINDX, @LSTCLSDT, @TRERCLSG, @DIVACTSG, @BLNCDSPL, @KPGACHST, @KPGTRXHS, @AHSTPSTG, @USRDFPR1, @USRDRPR2, @USRDRPR3, @USRDRPR4, @UPDTACCEL, @Posting_Number_Type, @Delete_Saved_Trx, @Void_Sub_Trx, @Correct_IC_Trx, @Allow_Reporting_Ledgers, @UseLedgersForAcctBalance, @NXTBUDJRLENT, @KPBUDTRXHIST, @NextReconciliationNumber) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40000SI] TO [DYNGRP]
GO
