SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL50500SD] (@USERID char(15), @ORD int, @SGMNTID char(67), @Ledger_ID smallint, @CURNCYID char(15), @TranslationCurrencyID char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .GL50500 WHERE USERID = @USERID AND ORD = @ORD AND SGMNTID = @SGMNTID AND Ledger_ID = @Ledger_ID AND CURNCYID = @CURNCYID AND TranslationCurrencyID = @TranslationCurrencyID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .GL50500 WHERE USERID = @USERID AND ORD = @ORD AND SGMNTID = @SGMNTID AND Ledger_ID = @Ledger_ID AND CURNCYID = @CURNCYID AND TranslationCurrencyID = @TranslationCurrencyID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL50500SD] TO [DYNGRP]
GO
