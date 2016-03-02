SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27602SI] (@ME_Check_Format_ID char(15), @ME_Check_Object_Order smallint, @ME_X_Coordinate numeric(19,5), @ME_Y_Coordinate numeric(19,5), @ME_X_Coordinate_Centimete numeric(19,5), @ME_Y_Coordinate_Centimete numeric(19,5), @ME_X_Coordinate_Inch numeric(19,5), @ME_Y_Coordinate_Inch numeric(19,5), @ME_Font_Type smallint, @ME_Font_Size smallint, @ME_Font_Bold tinyint, @ME_Font_Italics tinyint, @ME_Field_Name char(31), @ME_Visible tinyint, @ME_Position_Only tinyint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ME27602 (ME_Check_Format_ID, ME_Check_Object_Order, ME_X_Coordinate, ME_Y_Coordinate, ME_X_Coordinate_Centimete, ME_Y_Coordinate_Centimete, ME_X_Coordinate_Inch, ME_Y_Coordinate_Inch, ME_Font_Type, ME_Font_Size, ME_Font_Bold, ME_Font_Italics, ME_Field_Name, ME_Visible, ME_Position_Only) VALUES ( @ME_Check_Format_ID, @ME_Check_Object_Order, @ME_X_Coordinate, @ME_Y_Coordinate, @ME_X_Coordinate_Centimete, @ME_Y_Coordinate_Centimete, @ME_X_Coordinate_Inch, @ME_Y_Coordinate_Inch, @ME_Font_Type, @ME_Font_Size, @ME_Font_Bold, @ME_Font_Italics, @ME_Field_Name, @ME_Visible, @ME_Position_Only) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27602SI] TO [DYNGRP]
GO
