SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC51101N_1] (@BS int, @WDC_Entity_ID int, @Node_Image smallint, @Node_Data int, @WDC_Entity_ID_RS int, @Node_Image_RS smallint, @Node_Data_RS int, @WDC_Entity_ID_RE int, @Node_Image_RE smallint, @Node_Data_RE int) AS  set nocount on IF @WDC_Entity_ID_RS IS NULL BEGIN SELECT TOP 25  WDC_Entity_ID, Node_Image, Node_Data, Node_State, Node_Overlay, Node_Child, Node_Image_Parent1, Node_Data_Parent1, Node_Image_Parent2, Node_Data_Parent2, Node_Image_Parent3, Node_Data_Parent3, ACTIVE, DEX_ROW_ID FROM .WDC51101 WHERE ( WDC_Entity_ID = @WDC_Entity_ID AND Node_Image = @Node_Image AND Node_Data > @Node_Data OR WDC_Entity_ID = @WDC_Entity_ID AND Node_Image > @Node_Image OR WDC_Entity_ID > @WDC_Entity_ID ) ORDER BY WDC_Entity_ID ASC, Node_Image ASC, Node_Data ASC END ELSE IF @WDC_Entity_ID_RS = @WDC_Entity_ID_RE BEGIN SELECT TOP 25  WDC_Entity_ID, Node_Image, Node_Data, Node_State, Node_Overlay, Node_Child, Node_Image_Parent1, Node_Data_Parent1, Node_Image_Parent2, Node_Data_Parent2, Node_Image_Parent3, Node_Data_Parent3, ACTIVE, DEX_ROW_ID FROM .WDC51101 WHERE WDC_Entity_ID = @WDC_Entity_ID_RS AND Node_Image BETWEEN @Node_Image_RS AND @Node_Image_RE AND Node_Data BETWEEN @Node_Data_RS AND @Node_Data_RE AND ( WDC_Entity_ID = @WDC_Entity_ID AND Node_Image = @Node_Image AND Node_Data > @Node_Data OR WDC_Entity_ID = @WDC_Entity_ID AND Node_Image > @Node_Image OR WDC_Entity_ID > @WDC_Entity_ID ) ORDER BY WDC_Entity_ID ASC, Node_Image ASC, Node_Data ASC END ELSE BEGIN SELECT TOP 25  WDC_Entity_ID, Node_Image, Node_Data, Node_State, Node_Overlay, Node_Child, Node_Image_Parent1, Node_Data_Parent1, Node_Image_Parent2, Node_Data_Parent2, Node_Image_Parent3, Node_Data_Parent3, ACTIVE, DEX_ROW_ID FROM .WDC51101 WHERE WDC_Entity_ID BETWEEN @WDC_Entity_ID_RS AND @WDC_Entity_ID_RE AND Node_Image BETWEEN @Node_Image_RS AND @Node_Image_RE AND Node_Data BETWEEN @Node_Data_RS AND @Node_Data_RE AND ( WDC_Entity_ID = @WDC_Entity_ID AND Node_Image = @Node_Image AND Node_Data > @Node_Data OR WDC_Entity_ID = @WDC_Entity_ID AND Node_Image > @Node_Image OR WDC_Entity_ID > @WDC_Entity_ID ) ORDER BY WDC_Entity_ID ASC, Node_Image ASC, Node_Data ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC51101N_1] TO [DYNGRP]
GO
