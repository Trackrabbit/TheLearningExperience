SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC41300SS_5] (@SEQNUMBR int) AS  set nocount on SELECT TOP 1  Field_Security_ID, Field_Security_Descripti, WDC_Dict, WDC_Form, WDC_Window, WDC_Field, WDC_Table, WDC_Dictionary_Sort, WDC_Security_Mode, Password_ID, WDC_Conditional, WDC_Script_Dict, SEQNUMBR, NOTEINDX, CREATDDT, MODIFDT, LSTUSRED, DEX_ROW_ID, WDC_Script FROM .WDC41300 WHERE SEQNUMBR = @SEQNUMBR ORDER BY SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC41300SS_5] TO [DYNGRP]
GO
