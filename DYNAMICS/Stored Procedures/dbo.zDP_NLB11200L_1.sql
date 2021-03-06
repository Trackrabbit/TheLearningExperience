SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB11200L_1] (@Navigation_ID_RS char(15), @LNITMSEQ_RS int, @Navigation_ID_RE char(15), @LNITMSEQ_RE int) AS set nocount on IF @Navigation_ID_RS IS NULL BEGIN SELECT TOP 25  Navigation_ID, LNITMSEQ, Table_Number, Field_Number, Restriction_Type, Value_Type, Apply_Restriction_To, DEX_ROW_ID, TXTFIELD FROM .NLB11200 ORDER BY Navigation_ID DESC, LNITMSEQ DESC END ELSE IF @Navigation_ID_RS = @Navigation_ID_RE BEGIN SELECT TOP 25  Navigation_ID, LNITMSEQ, Table_Number, Field_Number, Restriction_Type, Value_Type, Apply_Restriction_To, DEX_ROW_ID, TXTFIELD FROM .NLB11200 WHERE Navigation_ID = @Navigation_ID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Navigation_ID DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  Navigation_ID, LNITMSEQ, Table_Number, Field_Number, Restriction_Type, Value_Type, Apply_Restriction_To, DEX_ROW_ID, TXTFIELD FROM .NLB11200 WHERE Navigation_ID BETWEEN @Navigation_ID_RS AND @Navigation_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Navigation_ID DESC, LNITMSEQ DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB11200L_1] TO [DYNGRP]
GO
