SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB11400F_1] (@SmartList_ID_RS char(15), @GoTo_Number_RS smallint, @LNITMSEQ_RS int, @SmartList_ID_RE char(15), @GoTo_Number_RE smallint, @LNITMSEQ_RE int) AS set nocount on IF @SmartList_ID_RS IS NULL BEGIN SELECT TOP 25  SmartList_ID, GoTo_Number, LNITMSEQ, Table_Number, Field_Number, SmartList_Display_Name, DEX_ROW_ID FROM .SLB11400 ORDER BY SmartList_ID ASC, GoTo_Number ASC, LNITMSEQ ASC END ELSE IF @SmartList_ID_RS = @SmartList_ID_RE BEGIN SELECT TOP 25  SmartList_ID, GoTo_Number, LNITMSEQ, Table_Number, Field_Number, SmartList_Display_Name, DEX_ROW_ID FROM .SLB11400 WHERE SmartList_ID = @SmartList_ID_RS AND GoTo_Number BETWEEN @GoTo_Number_RS AND @GoTo_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY SmartList_ID ASC, GoTo_Number ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  SmartList_ID, GoTo_Number, LNITMSEQ, Table_Number, Field_Number, SmartList_Display_Name, DEX_ROW_ID FROM .SLB11400 WHERE SmartList_ID BETWEEN @SmartList_ID_RS AND @SmartList_ID_RE AND GoTo_Number BETWEEN @GoTo_Number_RS AND @GoTo_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY SmartList_ID ASC, GoTo_Number ASC, LNITMSEQ ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB11400F_1] TO [DYNGRP]
GO
