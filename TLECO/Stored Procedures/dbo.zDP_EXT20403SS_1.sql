SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20403SS_1] (@Extender_Event_ID int, @Action_Number smallint, @LNITMSEQ int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Event_ID, Action_Number, LNITMSEQ, Field_ID, Set_Value_Type, Field_ID_2, STRGA255, TOTAL, DATE1, TIME1, Action_Task_Type, Long_Field_Name, Long_Field_Name_2, DEX_ROW_ID FROM .EXT20403 WHERE Extender_Event_ID = @Extender_Event_ID AND Action_Number = @Action_Number AND LNITMSEQ = @LNITMSEQ ORDER BY Extender_Event_ID ASC, Action_Number ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20403SS_1] TO [DYNGRP]
GO
