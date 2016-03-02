SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC41300L_3] (@WDC_Dictionary_Sort_RS char(241), @WDC_Dictionary_Sort_RE char(241)) AS  set nocount on IF @WDC_Dictionary_Sort_RS IS NULL BEGIN SELECT TOP 25  Field_Security_ID, Field_Security_Descripti, WDC_Dict, WDC_Form, WDC_Window, WDC_Field, WDC_Table, WDC_Dictionary_Sort, WDC_Security_Mode, Password_ID, WDC_Conditional, WDC_Script_Dict, SEQNUMBR, NOTEINDX, CREATDDT, MODIFDT, LSTUSRED, DEX_ROW_ID, WDC_Script FROM .WDC41300 ORDER BY WDC_Dictionary_Sort DESC, DEX_ROW_ID DESC END ELSE IF @WDC_Dictionary_Sort_RS = @WDC_Dictionary_Sort_RE BEGIN SELECT TOP 25  Field_Security_ID, Field_Security_Descripti, WDC_Dict, WDC_Form, WDC_Window, WDC_Field, WDC_Table, WDC_Dictionary_Sort, WDC_Security_Mode, Password_ID, WDC_Conditional, WDC_Script_Dict, SEQNUMBR, NOTEINDX, CREATDDT, MODIFDT, LSTUSRED, DEX_ROW_ID, WDC_Script FROM .WDC41300 WHERE WDC_Dictionary_Sort = @WDC_Dictionary_Sort_RS ORDER BY WDC_Dictionary_Sort DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  Field_Security_ID, Field_Security_Descripti, WDC_Dict, WDC_Form, WDC_Window, WDC_Field, WDC_Table, WDC_Dictionary_Sort, WDC_Security_Mode, Password_ID, WDC_Conditional, WDC_Script_Dict, SEQNUMBR, NOTEINDX, CREATDDT, MODIFDT, LSTUSRED, DEX_ROW_ID, WDC_Script FROM .WDC41300 WHERE WDC_Dictionary_Sort BETWEEN @WDC_Dictionary_Sort_RS AND @WDC_Dictionary_Sort_RE ORDER BY WDC_Dictionary_Sort DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC41300L_3] TO [DYNGRP]
GO
