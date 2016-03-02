SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT43204SS_1] (@Extender_Type smallint, @Extender_ID char(15), @Window_Number smallint, @LNITMSEQ int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Type, Extender_ID, Window_Number, LNITMSEQ, Note_Type_Description, DEX_ROW_ID FROM .EXT43204 WHERE Extender_Type = @Extender_Type AND Extender_ID = @Extender_ID AND Window_Number = @Window_Number AND LNITMSEQ = @LNITMSEQ ORDER BY Extender_Type ASC, Extender_ID ASC, Window_Number ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT43204SS_1] TO [DYNGRP]
GO
