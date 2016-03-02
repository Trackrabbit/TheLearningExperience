SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10600L_1] (@SmartList_ID_RS char(15), @SmartList_Field_Name_RS char(81), @SmartList_ID_RE char(15), @SmartList_Field_Name_RE char(81)) AS set nocount on IF @SmartList_ID_RS IS NULL BEGIN SELECT TOP 25  SmartList_ID, SmartList_Field_Name, DEX_ROW_ID FROM .SLB10600 ORDER BY SmartList_ID DESC, SmartList_Field_Name DESC END ELSE IF @SmartList_ID_RS = @SmartList_ID_RE BEGIN SELECT TOP 25  SmartList_ID, SmartList_Field_Name, DEX_ROW_ID FROM .SLB10600 WHERE SmartList_ID = @SmartList_ID_RS AND SmartList_Field_Name BETWEEN @SmartList_Field_Name_RS AND @SmartList_Field_Name_RE ORDER BY SmartList_ID DESC, SmartList_Field_Name DESC END ELSE BEGIN SELECT TOP 25  SmartList_ID, SmartList_Field_Name, DEX_ROW_ID FROM .SLB10600 WHERE SmartList_ID BETWEEN @SmartList_ID_RS AND @SmartList_ID_RE AND SmartList_Field_Name BETWEEN @SmartList_Field_Name_RS AND @SmartList_Field_Name_RE ORDER BY SmartList_ID DESC, SmartList_Field_Name DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10600L_1] TO [DYNGRP]
GO
