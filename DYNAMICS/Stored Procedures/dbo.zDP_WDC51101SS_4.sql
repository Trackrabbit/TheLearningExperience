SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC51101SS_4] (@WDC_Entity_ID int, @Node_Image_Parent1 smallint, @Node_Data_Parent1 int, @Node_Overlay smallint) AS  set nocount on SELECT TOP 1  WDC_Entity_ID, Node_Image, Node_Data, Node_State, Node_Overlay, Node_Child, Node_Image_Parent1, Node_Data_Parent1, Node_Image_Parent2, Node_Data_Parent2, Node_Image_Parent3, Node_Data_Parent3, ACTIVE, DEX_ROW_ID FROM .WDC51101 WHERE WDC_Entity_ID = @WDC_Entity_ID AND Node_Image_Parent1 = @Node_Image_Parent1 AND Node_Data_Parent1 = @Node_Data_Parent1 AND Node_Overlay = @Node_Overlay ORDER BY WDC_Entity_ID ASC, Node_Image_Parent1 ASC, Node_Data_Parent1 ASC, Node_Overlay ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC51101SS_4] TO [DYNGRP]
GO
