SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123516F_1] (@Output_Format_RS char(21), @ME_Line_Position_RS smallint, @ME_Field_Position_RS smallint, @Output_Format_RE char(21), @ME_Line_Position_RE smallint, @ME_Field_Position_RE smallint) AS  set nocount on IF @Output_Format_RS IS NULL BEGIN SELECT TOP 25  Output_Format, ME_Line_Position, ME_Field_Position, ME_Field_Name, ME_Field_Type, ME_Standard_Fields, Field_Length, ME_Constant_Values, ME_Field_Format, ME_Filler, ME_Justification, DEX_ROW_ID FROM .ME123516 ORDER BY Output_Format ASC, ME_Line_Position ASC, ME_Field_Position ASC END ELSE IF @Output_Format_RS = @Output_Format_RE BEGIN SELECT TOP 25  Output_Format, ME_Line_Position, ME_Field_Position, ME_Field_Name, ME_Field_Type, ME_Standard_Fields, Field_Length, ME_Constant_Values, ME_Field_Format, ME_Filler, ME_Justification, DEX_ROW_ID FROM .ME123516 WHERE Output_Format = @Output_Format_RS AND ME_Line_Position BETWEEN @ME_Line_Position_RS AND @ME_Line_Position_RE AND ME_Field_Position BETWEEN @ME_Field_Position_RS AND @ME_Field_Position_RE ORDER BY Output_Format ASC, ME_Line_Position ASC, ME_Field_Position ASC END ELSE BEGIN SELECT TOP 25  Output_Format, ME_Line_Position, ME_Field_Position, ME_Field_Name, ME_Field_Type, ME_Standard_Fields, Field_Length, ME_Constant_Values, ME_Field_Format, ME_Filler, ME_Justification, DEX_ROW_ID FROM .ME123516 WHERE Output_Format BETWEEN @Output_Format_RS AND @Output_Format_RE AND ME_Line_Position BETWEEN @ME_Line_Position_RS AND @ME_Line_Position_RE AND ME_Field_Position BETWEEN @ME_Field_Position_RS AND @ME_Field_Position_RE ORDER BY Output_Format ASC, ME_Line_Position ASC, ME_Field_Position ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123516F_1] TO [DYNGRP]
GO