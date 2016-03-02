SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GOTO100SI] (@SmartList_ID char(15), @GoTo_Number smallint, @GoTo_Description char(81), @GoTo_Type smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .GOTO100 (SmartList_ID, GoTo_Number, GoTo_Description, GoTo_Type) VALUES ( @SmartList_ID, @GoTo_Number, @GoTo_Description, @GoTo_Type) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GOTO100SI] TO [DYNGRP]
GO
