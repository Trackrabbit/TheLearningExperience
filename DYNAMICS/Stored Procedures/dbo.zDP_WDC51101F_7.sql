SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC51101F_7] (@WDC_Entity_ID_RS int, @Node_Image_Parent3_RS smallint, @Node_Data_Parent3_RS int, @Node_State_RS smallint, @WDC_Entity_ID_RE int, @Node_Image_Parent3_RE smallint, @Node_Data_Parent3_RE int, @Node_State_RE smallint) AS  set nocount on IF @WDC_Entity_ID_RS IS NULL BEGIN SELECT TOP 25  WDC_Entity_ID, Node_Image, Node_Data, Node_State, Node_Overlay, Node_Child, Node_Image_Parent1, Node_Data_Parent1, Node_Image_Parent2, Node_Data_Parent2, Node_Image_Parent3, Node_Data_Parent3, ACTIVE, DEX_ROW_ID FROM .WDC51101 ORDER BY WDC_Entity_ID ASC, Node_Image_Parent3 ASC, Node_Data_Parent3 ASC, Node_State ASC, DEX_ROW_ID ASC END ELSE IF @WDC_Entity_ID_RS = @WDC_Entity_ID_RE BEGIN SELECT TOP 25  WDC_Entity_ID, Node_Image, Node_Data, Node_State, Node_Overlay, Node_Child, Node_Image_Parent1, Node_Data_Parent1, Node_Image_Parent2, Node_Data_Parent2, Node_Image_Parent3, Node_Data_Parent3, ACTIVE, DEX_ROW_ID FROM .WDC51101 WHERE WDC_Entity_ID = @WDC_Entity_ID_RS AND Node_Image_Parent3 BETWEEN @Node_Image_Parent3_RS AND @Node_Image_Parent3_RE AND Node_Data_Parent3 BETWEEN @Node_Data_Parent3_RS AND @Node_Data_Parent3_RE AND Node_State BETWEEN @Node_State_RS AND @Node_State_RE ORDER BY WDC_Entity_ID ASC, Node_Image_Parent3 ASC, Node_Data_Parent3 ASC, Node_State ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  WDC_Entity_ID, Node_Image, Node_Data, Node_State, Node_Overlay, Node_Child, Node_Image_Parent1, Node_Data_Parent1, Node_Image_Parent2, Node_Data_Parent2, Node_Image_Parent3, Node_Data_Parent3, ACTIVE, DEX_ROW_ID FROM .WDC51101 WHERE WDC_Entity_ID BETWEEN @WDC_Entity_ID_RS AND @WDC_Entity_ID_RE AND Node_Image_Parent3 BETWEEN @Node_Image_Parent3_RS AND @Node_Image_Parent3_RE AND Node_Data_Parent3 BETWEEN @Node_Data_Parent3_RS AND @Node_Data_Parent3_RE AND Node_State BETWEEN @Node_State_RS AND @Node_State_RE ORDER BY WDC_Entity_ID ASC, Node_Image_Parent3 ASC, Node_Data_Parent3 ASC, Node_State ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC51101F_7] TO [DYNGRP]
GO
