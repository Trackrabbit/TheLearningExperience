SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_WHPT001SS_2] (@WH_Type smallint, @SEQNUMBR int, @WH_Cube char(51), @WH_PT_Option_ID char(31), @WH_Property char(51)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  WH_PT_Option_ID, WH_Server_ID, WH_Database, WH_Cube, WH_Type, SEQNUMBR, WH_Property, WH_Portal, fileName, DSCRIPTN, DEX_ROW_ID FROM .WHPT001 WHERE WH_Type = @WH_Type AND SEQNUMBR = @SEQNUMBR AND WH_Cube = @WH_Cube AND WH_PT_Option_ID = @WH_PT_Option_ID AND WH_Property = @WH_Property ORDER BY WH_Type ASC, SEQNUMBR ASC, WH_Cube ASC, WH_PT_Option_ID ASC, WH_Property ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_WHPT001SS_2] TO [DYNGRP]
GO
