SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20210L_2] (@Extender_SmartList_Num_RS smallint, @Extender_SmartList_Num_RE smallint) AS /* 12.00.0311.000 */ set nocount on IF @Extender_SmartList_Num_RS IS NULL BEGIN SELECT TOP 25  Extender_Form_ID, LNITMSEQ, Extender_SmartList_Num, Extender_SmartList_Name, PRODID, Series_Number, DEX_ROW_ID FROM .EXT20210 ORDER BY Extender_SmartList_Num DESC END ELSE IF @Extender_SmartList_Num_RS = @Extender_SmartList_Num_RE BEGIN SELECT TOP 25  Extender_Form_ID, LNITMSEQ, Extender_SmartList_Num, Extender_SmartList_Name, PRODID, Series_Number, DEX_ROW_ID FROM .EXT20210 WHERE Extender_SmartList_Num = @Extender_SmartList_Num_RS ORDER BY Extender_SmartList_Num DESC END ELSE BEGIN SELECT TOP 25  Extender_Form_ID, LNITMSEQ, Extender_SmartList_Num, Extender_SmartList_Name, PRODID, Series_Number, DEX_ROW_ID FROM .EXT20210 WHERE Extender_SmartList_Num BETWEEN @Extender_SmartList_Num_RS AND @Extender_SmartList_Num_RE ORDER BY Extender_SmartList_Num DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20210L_2] TO [DYNGRP]
GO
