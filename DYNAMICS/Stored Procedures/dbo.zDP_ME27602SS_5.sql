SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27602SS_5] (@ME_Check_Format_ID char(15), @ME_Y_Coordinate numeric(19,5), @ME_X_Coordinate numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ME_Check_Format_ID, ME_Check_Object_Order, ME_X_Coordinate, ME_Y_Coordinate, ME_X_Coordinate_Centimete, ME_Y_Coordinate_Centimete, ME_X_Coordinate_Inch, ME_Y_Coordinate_Inch, ME_Font_Type, ME_Font_Size, ME_Font_Bold, ME_Font_Italics, ME_Field_Name, ME_Visible, ME_Position_Only, DEX_ROW_ID FROM .ME27602 WHERE ME_Check_Format_ID = @ME_Check_Format_ID AND ME_Y_Coordinate = @ME_Y_Coordinate AND ME_X_Coordinate = @ME_X_Coordinate ORDER BY ME_Check_Format_ID ASC, ME_Y_Coordinate ASC, ME_X_Coordinate ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27602SS_5] TO [DYNGRP]
GO
