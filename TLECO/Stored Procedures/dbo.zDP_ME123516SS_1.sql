SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123516SS_1] (@Output_Format char(21), @ME_Line_Position smallint, @ME_Field_Position smallint) AS  set nocount on SELECT TOP 1  Output_Format, ME_Line_Position, ME_Field_Position, ME_Field_Name, ME_Field_Type, ME_Standard_Fields, Field_Length, ME_Constant_Values, ME_Field_Format, ME_Filler, ME_Justification, DEX_ROW_ID FROM .ME123516 WHERE Output_Format = @Output_Format AND ME_Line_Position = @ME_Line_Position AND ME_Field_Position = @ME_Field_Position ORDER BY Output_Format ASC, ME_Line_Position ASC, ME_Field_Position ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123516SS_1] TO [DYNGRP]
GO
