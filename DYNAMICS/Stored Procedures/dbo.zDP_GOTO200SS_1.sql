SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GOTO200SS_1] (@SmartList_ID char(15), @GoTo_Number smallint, @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SmartList_ID, GoTo_Number, LNITMSEQ, Table_Number, Field_Number, DEX_ROW_ID FROM .GOTO200 WHERE SmartList_ID = @SmartList_ID AND GoTo_Number = @GoTo_Number AND LNITMSEQ = @LNITMSEQ ORDER BY SmartList_ID ASC, GoTo_Number ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GOTO200SS_1] TO [DYNGRP]
GO
