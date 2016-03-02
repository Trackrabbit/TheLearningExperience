SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123515SS_1] (@Output_Format char(21), @ME_Line_Position smallint) AS  set nocount on SELECT TOP 1  Output_Format, ME_Line_Position, BANKID, ME_Line_Type, ME_File_Name, ME_Output_Type, ME_Number_of_Fields, ME_File_Length, DEX_ROW_ID FROM .ME123515 WHERE Output_Format = @Output_Format AND ME_Line_Position = @ME_Line_Position ORDER BY Output_Format ASC, ME_Line_Position ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123515SS_1] TO [DYNGRP]
GO
