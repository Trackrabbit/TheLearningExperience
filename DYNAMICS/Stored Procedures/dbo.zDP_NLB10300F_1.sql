SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10300F_1] (@Navigation_ID_RS char(15), @Table_Number_RS smallint, @LNITMSEQ_RS int, @Navigation_ID_RE char(15), @Table_Number_RE smallint, @LNITMSEQ_RE int) AS set nocount on IF @Navigation_ID_RS IS NULL BEGIN SELECT TOP 25  Navigation_ID, Table_Number, LNITMSEQ, From_Field, To_Field, DEX_ROW_ID FROM .NLB10300 ORDER BY Navigation_ID ASC, Table_Number ASC, LNITMSEQ ASC END ELSE IF @Navigation_ID_RS = @Navigation_ID_RE BEGIN SELECT TOP 25  Navigation_ID, Table_Number, LNITMSEQ, From_Field, To_Field, DEX_ROW_ID FROM .NLB10300 WHERE Navigation_ID = @Navigation_ID_RS AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Navigation_ID ASC, Table_Number ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  Navigation_ID, Table_Number, LNITMSEQ, From_Field, To_Field, DEX_ROW_ID FROM .NLB10300 WHERE Navigation_ID BETWEEN @Navigation_ID_RS AND @Navigation_ID_RE AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Navigation_ID ASC, Table_Number ASC, LNITMSEQ ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10300F_1] TO [DYNGRP]
GO
