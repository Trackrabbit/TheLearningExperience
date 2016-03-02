SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40001L_1] (@Ledger_ID_RS smallint, @Ledger_ID_RE smallint) AS  set nocount on IF @Ledger_ID_RS IS NULL BEGIN SELECT TOP 25  Ledger_ID, Ledger_Name, Ledger_Description, UNIQKEY, DEX_ROW_ID FROM .GL40001 ORDER BY Ledger_ID DESC END ELSE IF @Ledger_ID_RS = @Ledger_ID_RE BEGIN SELECT TOP 25  Ledger_ID, Ledger_Name, Ledger_Description, UNIQKEY, DEX_ROW_ID FROM .GL40001 WHERE Ledger_ID = @Ledger_ID_RS ORDER BY Ledger_ID DESC END ELSE BEGIN SELECT TOP 25  Ledger_ID, Ledger_Name, Ledger_Description, UNIQKEY, DEX_ROW_ID FROM .GL40001 WHERE Ledger_ID BETWEEN @Ledger_ID_RS AND @Ledger_ID_RE ORDER BY Ledger_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40001L_1] TO [DYNGRP]
GO
