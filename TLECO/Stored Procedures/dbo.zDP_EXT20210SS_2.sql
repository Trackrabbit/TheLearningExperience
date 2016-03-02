SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20210SS_2] (@Extender_SmartList_Num smallint) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Form_ID, LNITMSEQ, Extender_SmartList_Num, Extender_SmartList_Name, PRODID, Series_Number, DEX_ROW_ID FROM .EXT20210 WHERE Extender_SmartList_Num = @Extender_SmartList_Num ORDER BY Extender_SmartList_Num ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20210SS_2] TO [DYNGRP]
GO
