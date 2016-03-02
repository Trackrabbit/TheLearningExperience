SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20232L_2] (@Extender_Navigation_List_RS int, @Window_Number_RS smallint, @Extender_Form_ID_RS char(15), @Extender_Navigation_List_RE int, @Window_Number_RE smallint, @Extender_Form_ID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Navigation_List_RS IS NULL BEGIN SELECT TOP 25  Extender_Navigation_List, LNITMSEQ, Navigation_Detail_Type, Window_Number, Extender_Form_ID, DEX_ROW_ID FROM .EXT20232 ORDER BY Extender_Navigation_List DESC, Window_Number DESC, Extender_Form_ID DESC END ELSE IF @Extender_Navigation_List_RS = @Extender_Navigation_List_RE BEGIN SELECT TOP 25  Extender_Navigation_List, LNITMSEQ, Navigation_Detail_Type, Window_Number, Extender_Form_ID, DEX_ROW_ID FROM .EXT20232 WHERE Extender_Navigation_List = @Extender_Navigation_List_RS AND Window_Number BETWEEN @Window_Number_RS AND @Window_Number_RE AND Extender_Form_ID BETWEEN @Extender_Form_ID_RS AND @Extender_Form_ID_RE ORDER BY Extender_Navigation_List DESC, Window_Number DESC, Extender_Form_ID DESC END ELSE BEGIN SELECT TOP 25  Extender_Navigation_List, LNITMSEQ, Navigation_Detail_Type, Window_Number, Extender_Form_ID, DEX_ROW_ID FROM .EXT20232 WHERE Extender_Navigation_List BETWEEN @Extender_Navigation_List_RS AND @Extender_Navigation_List_RE AND Window_Number BETWEEN @Window_Number_RS AND @Window_Number_RE AND Extender_Form_ID BETWEEN @Extender_Form_ID_RS AND @Extender_Form_ID_RE ORDER BY Extender_Navigation_List DESC, Window_Number DESC, Extender_Form_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20232L_2] TO [DYNGRP]
GO
