SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10700F_1] (@SmartList_ID_RS char(15), @Table_Number_RS smallint, @Field_Number_RS smallint, @LNITMSEQ_RS int, @SmartList_ID_RE char(15), @Table_Number_RE smallint, @Field_Number_RE smallint, @LNITMSEQ_RE int) AS set nocount on IF @SmartList_ID_RS IS NULL BEGIN SELECT TOP 25  SmartList_ID, Table_Number, Field_Number, LNITMSEQ, STRGA255, DEX_ROW_ID FROM .SLB10700 ORDER BY SmartList_ID ASC, Table_Number ASC, Field_Number ASC, LNITMSEQ ASC END ELSE IF @SmartList_ID_RS = @SmartList_ID_RE BEGIN SELECT TOP 25  SmartList_ID, Table_Number, Field_Number, LNITMSEQ, STRGA255, DEX_ROW_ID FROM .SLB10700 WHERE SmartList_ID = @SmartList_ID_RS AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE AND Field_Number BETWEEN @Field_Number_RS AND @Field_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY SmartList_ID ASC, Table_Number ASC, Field_Number ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  SmartList_ID, Table_Number, Field_Number, LNITMSEQ, STRGA255, DEX_ROW_ID FROM .SLB10700 WHERE SmartList_ID BETWEEN @SmartList_ID_RS AND @SmartList_ID_RE AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE AND Field_Number BETWEEN @Field_Number_RS AND @Field_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY SmartList_ID ASC, Table_Number ASC, Field_Number ASC, LNITMSEQ ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10700F_1] TO [DYNGRP]
GO
