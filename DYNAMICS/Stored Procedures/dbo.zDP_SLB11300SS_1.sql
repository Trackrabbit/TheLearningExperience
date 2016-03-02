SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB11300SS_1] (@SmartList_ID char(15), @LNITMSEQ int, @Value_Number smallint) AS set nocount on SELECT TOP 1  SmartList_ID, LNITMSEQ, Value_Number, STRGA255, STRGB255, From_Amount, To_Amount, STRTDATE, ENDDATE, STRTTIME, ENDTIME, From_Window_Number, To_Window_Number, From_Field_Number, To_Field_Number, DEX_ROW_ID FROM .SLB11300 WHERE SmartList_ID = @SmartList_ID AND LNITMSEQ = @LNITMSEQ AND Value_Number = @Value_Number ORDER BY SmartList_ID ASC, LNITMSEQ ASC, Value_Number ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB11300SS_1] TO [DYNGRP]
GO
