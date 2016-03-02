SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC51101SS_2] (@ACTIVE tinyint, @WDC_Entity_ID int) AS  set nocount on SELECT TOP 1  WDC_Entity_ID, Node_Image, Node_Data, Node_State, Node_Overlay, Node_Child, Node_Image_Parent1, Node_Data_Parent1, Node_Image_Parent2, Node_Data_Parent2, Node_Image_Parent3, Node_Data_Parent3, ACTIVE, DEX_ROW_ID FROM .WDC51101 WHERE ACTIVE = @ACTIVE AND WDC_Entity_ID = @WDC_Entity_ID ORDER BY ACTIVE ASC, WDC_Entity_ID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC51101SS_2] TO [DYNGRP]
GO
