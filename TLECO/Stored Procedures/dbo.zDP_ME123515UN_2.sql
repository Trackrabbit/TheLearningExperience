SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123515UN_2] (@BS int, @BANKID char(15), @ME_Line_Type smallint, @BANKID_RS char(15), @ME_Line_Type_RS smallint, @BANKID_RE char(15), @ME_Line_Type_RE smallint) AS  set nocount on IF @BANKID_RS IS NULL BEGIN SELECT TOP 25  Output_Format, ME_Line_Position, BANKID, ME_Line_Type, ME_File_Name, ME_Output_Type, ME_Number_of_Fields, ME_File_Length, DEX_ROW_ID FROM .ME123515 WHERE ( BANKID = @BANKID AND ME_Line_Type > @ME_Line_Type OR BANKID > @BANKID ) ORDER BY BANKID ASC, ME_Line_Type ASC, DEX_ROW_ID ASC END ELSE IF @BANKID_RS = @BANKID_RE BEGIN SELECT TOP 25  Output_Format, ME_Line_Position, BANKID, ME_Line_Type, ME_File_Name, ME_Output_Type, ME_Number_of_Fields, ME_File_Length, DEX_ROW_ID FROM .ME123515 WHERE BANKID = @BANKID_RS AND ME_Line_Type BETWEEN @ME_Line_Type_RS AND @ME_Line_Type_RE AND ( BANKID = @BANKID AND ME_Line_Type > @ME_Line_Type OR BANKID > @BANKID ) ORDER BY BANKID ASC, ME_Line_Type ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Output_Format, ME_Line_Position, BANKID, ME_Line_Type, ME_File_Name, ME_Output_Type, ME_Number_of_Fields, ME_File_Length, DEX_ROW_ID FROM .ME123515 WHERE BANKID BETWEEN @BANKID_RS AND @BANKID_RE AND ME_Line_Type BETWEEN @ME_Line_Type_RS AND @ME_Line_Type_RE AND ( BANKID = @BANKID AND ME_Line_Type > @ME_Line_Type OR BANKID > @BANKID ) ORDER BY BANKID ASC, ME_Line_Type ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123515UN_2] TO [DYNGRP]
GO
