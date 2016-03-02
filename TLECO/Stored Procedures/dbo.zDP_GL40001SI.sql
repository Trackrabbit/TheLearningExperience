SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40001SI] (@Ledger_ID smallint, @Ledger_Name char(15), @Ledger_Description char(31), @UNIQKEY char(1), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .GL40001 (Ledger_ID, Ledger_Name, Ledger_Description, UNIQKEY) VALUES ( @Ledger_ID, @Ledger_Name, @Ledger_Description, @UNIQKEY) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40001SI] TO [DYNGRP]
GO
