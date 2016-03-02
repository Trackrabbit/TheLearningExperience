SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC51101SI] (@WDC_Entity_ID int, @Node_Image smallint, @Node_Data int, @Node_State smallint, @Node_Overlay smallint, @Node_Child tinyint, @Node_Image_Parent1 smallint, @Node_Data_Parent1 int, @Node_Image_Parent2 smallint, @Node_Data_Parent2 int, @Node_Image_Parent3 smallint, @Node_Data_Parent3 int, @ACTIVE tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .WDC51101 (WDC_Entity_ID, Node_Image, Node_Data, Node_State, Node_Overlay, Node_Child, Node_Image_Parent1, Node_Data_Parent1, Node_Image_Parent2, Node_Data_Parent2, Node_Image_Parent3, Node_Data_Parent3, ACTIVE) VALUES ( @WDC_Entity_ID, @Node_Image, @Node_Data, @Node_State, @Node_Overlay, @Node_Child, @Node_Image_Parent1, @Node_Data_Parent1, @Node_Image_Parent2, @Node_Data_Parent2, @Node_Image_Parent3, @Node_Data_Parent3, @ACTIVE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC51101SI] TO [DYNGRP]
GO
