SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB11600F_2] (@SmartList_ID_RS char(15), @GoTo_Number_RS smallint, @SmartList_Field_Number_RS smallint, @SmartList_ID_RE char(15), @GoTo_Number_RE smallint, @SmartList_Field_Number_RE smallint) AS set nocount on IF @SmartList_ID_RS IS NULL BEGIN SELECT TOP 25  SmartList_ID, GoTo_Number, LNITMSEQ, SmartList_Field_Number, DEX_ROW_ID FROM .SLB11600 ORDER BY SmartList_ID ASC, GoTo_Number ASC, SmartList_Field_Number ASC END ELSE IF @SmartList_ID_RS = @SmartList_ID_RE BEGIN SELECT TOP 25  SmartList_ID, GoTo_Number, LNITMSEQ, SmartList_Field_Number, DEX_ROW_ID FROM .SLB11600 WHERE SmartList_ID = @SmartList_ID_RS AND GoTo_Number BETWEEN @GoTo_Number_RS AND @GoTo_Number_RE AND SmartList_Field_Number BETWEEN @SmartList_Field_Number_RS AND @SmartList_Field_Number_RE ORDER BY SmartList_ID ASC, GoTo_Number ASC, SmartList_Field_Number ASC END ELSE BEGIN SELECT TOP 25  SmartList_ID, GoTo_Number, LNITMSEQ, SmartList_Field_Number, DEX_ROW_ID FROM .SLB11600 WHERE SmartList_ID BETWEEN @SmartList_ID_RS AND @SmartList_ID_RE AND GoTo_Number BETWEEN @GoTo_Number_RS AND @GoTo_Number_RE AND SmartList_Field_Number BETWEEN @SmartList_Field_Number_RS AND @SmartList_Field_Number_RE ORDER BY SmartList_ID ASC, GoTo_Number ASC, SmartList_Field_Number ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB11600F_2] TO [DYNGRP]
GO
