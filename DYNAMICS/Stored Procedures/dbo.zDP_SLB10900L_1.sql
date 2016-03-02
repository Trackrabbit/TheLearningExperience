SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10900L_1] (@SmartList_ID_RS char(15), @GoTo_Number_RS smallint, @Parameter_Name_RS char(31), @SmartList_ID_RE char(15), @GoTo_Number_RE smallint, @Parameter_Name_RE char(31)) AS set nocount on IF @SmartList_ID_RS IS NULL BEGIN SELECT TOP 25  SmartList_ID, GoTo_Number, Parameter_Name, Table_Number, Field_Number, DEX_ROW_ID FROM .SLB10900 ORDER BY SmartList_ID DESC, GoTo_Number DESC, Parameter_Name DESC END ELSE IF @SmartList_ID_RS = @SmartList_ID_RE BEGIN SELECT TOP 25  SmartList_ID, GoTo_Number, Parameter_Name, Table_Number, Field_Number, DEX_ROW_ID FROM .SLB10900 WHERE SmartList_ID = @SmartList_ID_RS AND GoTo_Number BETWEEN @GoTo_Number_RS AND @GoTo_Number_RE AND Parameter_Name BETWEEN @Parameter_Name_RS AND @Parameter_Name_RE ORDER BY SmartList_ID DESC, GoTo_Number DESC, Parameter_Name DESC END ELSE BEGIN SELECT TOP 25  SmartList_ID, GoTo_Number, Parameter_Name, Table_Number, Field_Number, DEX_ROW_ID FROM .SLB10900 WHERE SmartList_ID BETWEEN @SmartList_ID_RS AND @SmartList_ID_RE AND GoTo_Number BETWEEN @GoTo_Number_RS AND @GoTo_Number_RE AND Parameter_Name BETWEEN @Parameter_Name_RS AND @Parameter_Name_RE ORDER BY SmartList_ID DESC, GoTo_Number DESC, Parameter_Name DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10900L_1] TO [DYNGRP]
GO
