SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC41300SS_3] (@WDC_Dictionary_Sort char(241)) AS  set nocount on SELECT TOP 1  Field_Security_ID, Field_Security_Descripti, WDC_Dict, WDC_Form, WDC_Window, WDC_Field, WDC_Table, WDC_Dictionary_Sort, WDC_Security_Mode, Password_ID, WDC_Conditional, WDC_Script_Dict, SEQNUMBR, NOTEINDX, CREATDDT, MODIFDT, LSTUSRED, DEX_ROW_ID, WDC_Script FROM .WDC41300 WHERE WDC_Dictionary_Sort = @WDC_Dictionary_Sort ORDER BY WDC_Dictionary_Sort ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC41300SS_3] TO [DYNGRP]
GO
