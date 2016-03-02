SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC51101N_2] (@BS int, @ACTIVE tinyint, @WDC_Entity_ID int, @DEX_ROW_ID int, @ACTIVE_RS tinyint, @WDC_Entity_ID_RS int, @ACTIVE_RE tinyint, @WDC_Entity_ID_RE int) AS  set nocount on IF @ACTIVE_RS IS NULL BEGIN SELECT TOP 25  WDC_Entity_ID, Node_Image, Node_Data, Node_State, Node_Overlay, Node_Child, Node_Image_Parent1, Node_Data_Parent1, Node_Image_Parent2, Node_Data_Parent2, Node_Image_Parent3, Node_Data_Parent3, ACTIVE, DEX_ROW_ID FROM .WDC51101 WHERE ( ACTIVE = @ACTIVE AND WDC_Entity_ID = @WDC_Entity_ID AND DEX_ROW_ID > @DEX_ROW_ID OR ACTIVE = @ACTIVE AND WDC_Entity_ID > @WDC_Entity_ID OR ACTIVE > @ACTIVE ) ORDER BY ACTIVE ASC, WDC_Entity_ID ASC, DEX_ROW_ID ASC END ELSE IF @ACTIVE_RS = @ACTIVE_RE BEGIN SELECT TOP 25  WDC_Entity_ID, Node_Image, Node_Data, Node_State, Node_Overlay, Node_Child, Node_Image_Parent1, Node_Data_Parent1, Node_Image_Parent2, Node_Data_Parent2, Node_Image_Parent3, Node_Data_Parent3, ACTIVE, DEX_ROW_ID FROM .WDC51101 WHERE ACTIVE = @ACTIVE_RS AND WDC_Entity_ID BETWEEN @WDC_Entity_ID_RS AND @WDC_Entity_ID_RE AND ( ACTIVE = @ACTIVE AND WDC_Entity_ID = @WDC_Entity_ID AND DEX_ROW_ID > @DEX_ROW_ID OR ACTIVE = @ACTIVE AND WDC_Entity_ID > @WDC_Entity_ID OR ACTIVE > @ACTIVE ) ORDER BY ACTIVE ASC, WDC_Entity_ID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  WDC_Entity_ID, Node_Image, Node_Data, Node_State, Node_Overlay, Node_Child, Node_Image_Parent1, Node_Data_Parent1, Node_Image_Parent2, Node_Data_Parent2, Node_Image_Parent3, Node_Data_Parent3, ACTIVE, DEX_ROW_ID FROM .WDC51101 WHERE ACTIVE BETWEEN @ACTIVE_RS AND @ACTIVE_RE AND WDC_Entity_ID BETWEEN @WDC_Entity_ID_RS AND @WDC_Entity_ID_RE AND ( ACTIVE = @ACTIVE AND WDC_Entity_ID = @WDC_Entity_ID AND DEX_ROW_ID > @DEX_ROW_ID OR ACTIVE = @ACTIVE AND WDC_Entity_ID > @WDC_Entity_ID OR ACTIVE > @ACTIVE ) ORDER BY ACTIVE ASC, WDC_Entity_ID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC51101N_2] TO [DYNGRP]
GO
