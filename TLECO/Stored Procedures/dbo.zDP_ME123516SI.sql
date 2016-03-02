SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123516SI] (@Output_Format char(21), @ME_Line_Position smallint, @ME_Field_Position smallint, @ME_Field_Name char(31), @ME_Field_Type smallint, @ME_Standard_Fields smallint, @Field_Length smallint, @ME_Constant_Values char(81), @ME_Field_Format smallint, @ME_Filler char(7), @ME_Justification smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ME123516 (Output_Format, ME_Line_Position, ME_Field_Position, ME_Field_Name, ME_Field_Type, ME_Standard_Fields, Field_Length, ME_Constant_Values, ME_Field_Format, ME_Filler, ME_Justification) VALUES ( @Output_Format, @ME_Line_Position, @ME_Field_Position, @ME_Field_Name, @ME_Field_Type, @ME_Standard_Fields, @Field_Length, @ME_Constant_Values, @ME_Field_Format, @ME_Filler, @ME_Justification) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123516SI] TO [DYNGRP]
GO
