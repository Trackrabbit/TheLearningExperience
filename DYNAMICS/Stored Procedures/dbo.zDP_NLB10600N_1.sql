SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10600N_1] (@BS int, @Navigation_ID char(15), @Navigation_Field_Name char(81), @Navigation_ID_RS char(15), @Navigation_Field_Name_RS char(81), @Navigation_ID_RE char(15), @Navigation_Field_Name_RE char(81)) AS set nocount on IF @Navigation_ID_RS IS NULL BEGIN SELECT TOP 25  Navigation_ID, Navigation_Field_Name, DEX_ROW_ID FROM .NLB10600 WHERE ( Navigation_ID = @Navigation_ID AND Navigation_Field_Name > @Navigation_Field_Name OR Navigation_ID > @Navigation_ID ) ORDER BY Navigation_ID ASC, Navigation_Field_Name ASC END ELSE IF @Navigation_ID_RS = @Navigation_ID_RE BEGIN SELECT TOP 25  Navigation_ID, Navigation_Field_Name, DEX_ROW_ID FROM .NLB10600 WHERE Navigation_ID = @Navigation_ID_RS AND Navigation_Field_Name BETWEEN @Navigation_Field_Name_RS AND @Navigation_Field_Name_RE AND ( Navigation_ID = @Navigation_ID AND Navigation_Field_Name > @Navigation_Field_Name OR Navigation_ID > @Navigation_ID ) ORDER BY Navigation_ID ASC, Navigation_Field_Name ASC END ELSE BEGIN SELECT TOP 25  Navigation_ID, Navigation_Field_Name, DEX_ROW_ID FROM .NLB10600 WHERE Navigation_ID BETWEEN @Navigation_ID_RS AND @Navigation_ID_RE AND Navigation_Field_Name BETWEEN @Navigation_Field_Name_RS AND @Navigation_Field_Name_RE AND ( Navigation_ID = @Navigation_ID AND Navigation_Field_Name > @Navigation_Field_Name OR Navigation_ID > @Navigation_ID ) ORDER BY Navigation_ID ASC, Navigation_Field_Name ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10600N_1] TO [DYNGRP]
GO
