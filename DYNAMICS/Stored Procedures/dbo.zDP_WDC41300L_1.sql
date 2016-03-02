SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC41300L_1] (@Field_Security_ID_RS char(15), @Field_Security_ID_RE char(15)) AS  set nocount on IF @Field_Security_ID_RS IS NULL BEGIN SELECT TOP 25  Field_Security_ID, Field_Security_Descripti, WDC_Dict, WDC_Form, WDC_Window, WDC_Field, WDC_Table, WDC_Dictionary_Sort, WDC_Security_Mode, Password_ID, WDC_Conditional, WDC_Script_Dict, SEQNUMBR, NOTEINDX, CREATDDT, MODIFDT, LSTUSRED, DEX_ROW_ID, WDC_Script FROM .WDC41300 ORDER BY Field_Security_ID DESC END ELSE IF @Field_Security_ID_RS = @Field_Security_ID_RE BEGIN SELECT TOP 25  Field_Security_ID, Field_Security_Descripti, WDC_Dict, WDC_Form, WDC_Window, WDC_Field, WDC_Table, WDC_Dictionary_Sort, WDC_Security_Mode, Password_ID, WDC_Conditional, WDC_Script_Dict, SEQNUMBR, NOTEINDX, CREATDDT, MODIFDT, LSTUSRED, DEX_ROW_ID, WDC_Script FROM .WDC41300 WHERE Field_Security_ID = @Field_Security_ID_RS ORDER BY Field_Security_ID DESC END ELSE BEGIN SELECT TOP 25  Field_Security_ID, Field_Security_Descripti, WDC_Dict, WDC_Form, WDC_Window, WDC_Field, WDC_Table, WDC_Dictionary_Sort, WDC_Security_Mode, Password_ID, WDC_Conditional, WDC_Script_Dict, SEQNUMBR, NOTEINDX, CREATDDT, MODIFDT, LSTUSRED, DEX_ROW_ID, WDC_Script FROM .WDC41300 WHERE Field_Security_ID BETWEEN @Field_Security_ID_RS AND @Field_Security_ID_RE ORDER BY Field_Security_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC41300L_1] TO [DYNGRP]
GO
