SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20141SS_1] (@Extender_Window_ID char(15), @LNITMSEQ int, @Condition_Number smallint) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Window_ID, LNITMSEQ, Condition_Number, Long_Window_Name, Long_Field_Name, Posting_Restriction, STRGA255, DATE1, TOTAL, TIME1, DEX_ROW_ID FROM .EXT20141 WHERE Extender_Window_ID = @Extender_Window_ID AND LNITMSEQ = @LNITMSEQ AND Condition_Number = @Condition_Number ORDER BY Extender_Window_ID ASC, LNITMSEQ ASC, Condition_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20141SS_1] TO [DYNGRP]
GO
