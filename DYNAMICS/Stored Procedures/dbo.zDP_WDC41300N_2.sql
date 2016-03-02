SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC41300N_2] (@BS int, @Field_Security_Descripti char(31), @DEX_ROW_ID int, @Field_Security_Descripti_RS char(31), @Field_Security_Descripti_RE char(31)) AS  set nocount on IF @Field_Security_Descripti_RS IS NULL BEGIN SELECT TOP 25  Field_Security_ID, Field_Security_Descripti, WDC_Dict, WDC_Form, WDC_Window, WDC_Field, WDC_Table, WDC_Dictionary_Sort, WDC_Security_Mode, Password_ID, WDC_Conditional, WDC_Script_Dict, SEQNUMBR, NOTEINDX, CREATDDT, MODIFDT, LSTUSRED, DEX_ROW_ID, WDC_Script FROM .WDC41300 WHERE ( Field_Security_Descripti = @Field_Security_Descripti AND DEX_ROW_ID > @DEX_ROW_ID OR Field_Security_Descripti > @Field_Security_Descripti ) ORDER BY Field_Security_Descripti ASC, DEX_ROW_ID ASC END ELSE IF @Field_Security_Descripti_RS = @Field_Security_Descripti_RE BEGIN SELECT TOP 25  Field_Security_ID, Field_Security_Descripti, WDC_Dict, WDC_Form, WDC_Window, WDC_Field, WDC_Table, WDC_Dictionary_Sort, WDC_Security_Mode, Password_ID, WDC_Conditional, WDC_Script_Dict, SEQNUMBR, NOTEINDX, CREATDDT, MODIFDT, LSTUSRED, DEX_ROW_ID, WDC_Script FROM .WDC41300 WHERE Field_Security_Descripti = @Field_Security_Descripti_RS AND ( Field_Security_Descripti = @Field_Security_Descripti AND DEX_ROW_ID > @DEX_ROW_ID OR Field_Security_Descripti > @Field_Security_Descripti ) ORDER BY Field_Security_Descripti ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Field_Security_ID, Field_Security_Descripti, WDC_Dict, WDC_Form, WDC_Window, WDC_Field, WDC_Table, WDC_Dictionary_Sort, WDC_Security_Mode, Password_ID, WDC_Conditional, WDC_Script_Dict, SEQNUMBR, NOTEINDX, CREATDDT, MODIFDT, LSTUSRED, DEX_ROW_ID, WDC_Script FROM .WDC41300 WHERE Field_Security_Descripti BETWEEN @Field_Security_Descripti_RS AND @Field_Security_Descripti_RE AND ( Field_Security_Descripti = @Field_Security_Descripti AND DEX_ROW_ID > @DEX_ROW_ID OR Field_Security_Descripti > @Field_Security_Descripti ) ORDER BY Field_Security_Descripti ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC41300N_2] TO [DYNGRP]
GO