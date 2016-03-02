SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC51101SS_1] (@WDC_Entity_ID int, @Node_Image smallint, @Node_Data int) AS  set nocount on SELECT TOP 1  WDC_Entity_ID, Node_Image, Node_Data, Node_State, Node_Overlay, Node_Child, Node_Image_Parent1, Node_Data_Parent1, Node_Image_Parent2, Node_Data_Parent2, Node_Image_Parent3, Node_Data_Parent3, ACTIVE, DEX_ROW_ID FROM .WDC51101 WHERE WDC_Entity_ID = @WDC_Entity_ID AND Node_Image = @Node_Image AND Node_Data = @Node_Data ORDER BY WDC_Entity_ID ASC, Node_Image ASC, Node_Data ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC51101SS_1] TO [DYNGRP]
GO
