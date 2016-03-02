SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_WHPSETPSI] (@SEQNUMBR int, @WH_Database char(81), @WH_Server_ID char(255), @WH_Allow_Database_Change tinyint, @WH_Allow_Server_Change tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .WHPSETP (SEQNUMBR, WH_Database, WH_Server_ID, WH_Allow_Database_Change, WH_Allow_Server_Change) VALUES ( @SEQNUMBR, @WH_Database, @WH_Server_ID, @WH_Allow_Database_Change, @WH_Allow_Server_Change) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_WHPSETPSI] TO [DYNGRP]
GO
