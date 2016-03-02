SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123515L_1] (@Output_Format_RS char(21), @ME_Line_Position_RS smallint, @Output_Format_RE char(21), @ME_Line_Position_RE smallint) AS  set nocount on IF @Output_Format_RS IS NULL BEGIN SELECT TOP 25  Output_Format, ME_Line_Position, BANKID, ME_Line_Type, ME_File_Name, ME_Output_Type, ME_Number_of_Fields, ME_File_Length, DEX_ROW_ID FROM .ME123515 ORDER BY Output_Format DESC, ME_Line_Position DESC END ELSE IF @Output_Format_RS = @Output_Format_RE BEGIN SELECT TOP 25  Output_Format, ME_Line_Position, BANKID, ME_Line_Type, ME_File_Name, ME_Output_Type, ME_Number_of_Fields, ME_File_Length, DEX_ROW_ID FROM .ME123515 WHERE Output_Format = @Output_Format_RS AND ME_Line_Position BETWEEN @ME_Line_Position_RS AND @ME_Line_Position_RE ORDER BY Output_Format DESC, ME_Line_Position DESC END ELSE BEGIN SELECT TOP 25  Output_Format, ME_Line_Position, BANKID, ME_Line_Type, ME_File_Name, ME_Output_Type, ME_Number_of_Fields, ME_File_Length, DEX_ROW_ID FROM .ME123515 WHERE Output_Format BETWEEN @Output_Format_RS AND @Output_Format_RE AND ME_Line_Position BETWEEN @ME_Line_Position_RS AND @ME_Line_Position_RE ORDER BY Output_Format DESC, ME_Line_Position DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123515L_1] TO [DYNGRP]
GO
