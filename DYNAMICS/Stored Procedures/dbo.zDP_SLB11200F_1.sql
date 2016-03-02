SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB11200F_1] (@SmartList_ID_RS char(15), @LNITMSEQ_RS int, @SmartList_ID_RE char(15), @LNITMSEQ_RE int) AS set nocount on IF @SmartList_ID_RS IS NULL BEGIN SELECT TOP 25  SmartList_ID, LNITMSEQ, Table_Number, Field_Number, Restriction_Type, Value_Type, Apply_Restriction_To, DEX_ROW_ID, TXTFIELD FROM .SLB11200 ORDER BY SmartList_ID ASC, LNITMSEQ ASC END ELSE IF @SmartList_ID_RS = @SmartList_ID_RE BEGIN SELECT TOP 25  SmartList_ID, LNITMSEQ, Table_Number, Field_Number, Restriction_Type, Value_Type, Apply_Restriction_To, DEX_ROW_ID, TXTFIELD FROM .SLB11200 WHERE SmartList_ID = @SmartList_ID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY SmartList_ID ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  SmartList_ID, LNITMSEQ, Table_Number, Field_Number, Restriction_Type, Value_Type, Apply_Restriction_To, DEX_ROW_ID, TXTFIELD FROM .SLB11200 WHERE SmartList_ID BETWEEN @SmartList_ID_RS AND @SmartList_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY SmartList_ID ASC, LNITMSEQ ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB11200F_1] TO [DYNGRP]
GO
