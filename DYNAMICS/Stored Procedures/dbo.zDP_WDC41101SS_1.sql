SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC41101SS_1] (@DUMYRCRD tinyint) AS  set nocount on SELECT TOP 1  DUMYRCRD, WDC_Security_Checkbox_1, WDC_Security_Checkbox_2, WDC_Security_Checkbox_3, WDC_Security_Checkbox_4, WDC_Security_Checkbox_5, WDC_Security_Checkbox_6, WDC_Security_Checkbox_7, WDC_Security_Checkbox_8, WDC_Security_Checkbox_9, WDC_Security_Checkbox_10, WDC_Security_Checkbox_11, WDC_Security_Checkbox_12, WDC_Security_Checkbox_13, WDC_Security_Checkbox_14, WDC_Security_Checkbox_15, WDC_Security_Checkbox_16, WDC_Security_Checkbox_17, WDC_Security_Checkbox_18, WDC_Security_Checkbox_19, WDC_Security_Checkbox_20, WDC_Security_Checkbox_21, WDC_Security_Checkbox_22, WDC_Security_Checkbox_23, WDC_Security_Checkbox_24, WDC_Security_Checkbox_25, WDC_Security_Checkbox_26, WDC_Security_Checkbox_27, WDC_Security_Checkbox_28, WDC_Security_Checkbox_29, WDC_Security_Checkbox_30, DTAPTHNM, USERID, CMPANYID, MESSAGE, CREATDDT, MODIFDT, LSTUSRED, DEX_ROW_ID FROM .WDC41101 WHERE DUMYRCRD = @DUMYRCRD ORDER BY DUMYRCRD ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC41101SS_1] TO [DYNGRP]
GO
