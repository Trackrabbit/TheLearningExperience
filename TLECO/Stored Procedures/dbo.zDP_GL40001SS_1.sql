SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40001SS_1] (@Ledger_ID smallint) AS  set nocount on SELECT TOP 1  Ledger_ID, Ledger_Name, Ledger_Description, UNIQKEY, DEX_ROW_ID FROM .GL40001 WHERE Ledger_ID = @Ledger_ID ORDER BY Ledger_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40001SS_1] TO [DYNGRP]
GO
