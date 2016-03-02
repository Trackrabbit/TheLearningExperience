SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123515SS_2] (@BANKID char(15), @ME_Line_Type smallint) AS  set nocount on SELECT TOP 1  Output_Format, ME_Line_Position, BANKID, ME_Line_Type, ME_File_Name, ME_Output_Type, ME_Number_of_Fields, ME_File_Length, DEX_ROW_ID FROM .ME123515 WHERE BANKID = @BANKID AND ME_Line_Type = @ME_Line_Type ORDER BY BANKID ASC, ME_Line_Type ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123515SS_2] TO [DYNGRP]
GO
