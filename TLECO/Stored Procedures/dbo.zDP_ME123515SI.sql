SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123515SI] (@Output_Format char(21), @ME_Line_Position smallint, @BANKID char(15), @ME_Line_Type smallint, @ME_File_Name char(31), @ME_Output_Type smallint, @ME_Number_of_Fields smallint, @ME_File_Length smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ME123515 (Output_Format, ME_Line_Position, BANKID, ME_Line_Type, ME_File_Name, ME_Output_Type, ME_Number_of_Fields, ME_File_Length) VALUES ( @Output_Format, @ME_Line_Position, @BANKID, @ME_Line_Type, @ME_File_Name, @ME_Output_Type, @ME_Number_of_Fields, @ME_File_Length) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123515SI] TO [DYNGRP]
GO
