SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27613SS_4] (@ME_Check_Format_ID char(15), @ME_X_Coordinate numeric(19,5), @ME_Y_Coordinate numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ME_Check_Format_ID, ME_Check_Object_Order, ME_Pay_Segment_DDL, ME_X_Coordinate, ME_Y_Coordinate, ME_X_Coordinate_Centimete, ME_Y_Coordinate_Centimete, ME_X_Coordinate_Inch, ME_Y_Coordinate_Inch, ME_Font_Type, ME_Font_Size, ME_Font_Bold, ME_Font_Italics, ME_Field_Name, ME_Visible, ME_Position_Only, ME_Label_Font_Bold, ME_Label_Font_Italics, ME_Label_Font_Size, ME_Label_Font_Type, ME_Label_Visible, ME_Label_X_Coordinate, ME_Label_X_Coordinate_Ce, ME_Label_X_Coordinate_In, ME_Label_Y_Coordinate, ME_Label_Y_Coordinate_Ce, ME_Label_Y_Coordinate_In, ME_Field_Label, DEX_ROW_ID FROM .ME27613 WHERE ME_Check_Format_ID = @ME_Check_Format_ID AND ME_X_Coordinate = @ME_X_Coordinate AND ME_Y_Coordinate = @ME_Y_Coordinate ORDER BY ME_Check_Format_ID ASC, ME_X_Coordinate ASC, ME_Y_Coordinate ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27613SS_4] TO [DYNGRP]
GO
