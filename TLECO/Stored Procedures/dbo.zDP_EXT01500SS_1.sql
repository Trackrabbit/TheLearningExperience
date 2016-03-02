SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01500SS_1] (@Extender_Type smallint, @Extender_Record_ID int, @Window_Number smallint, @LNITMSEQ int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Type, Extender_Record_ID, Window_Number, LNITMSEQ, DATE1, TIME1, USERID, Note_Type, DEX_ROW_ID, TXTFIELD FROM .EXT01500 WHERE Extender_Type = @Extender_Type AND Extender_Record_ID = @Extender_Record_ID AND Window_Number = @Window_Number AND LNITMSEQ = @LNITMSEQ ORDER BY Extender_Type ASC, Extender_Record_ID ASC, Window_Number ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01500SS_1] TO [DYNGRP]
GO
