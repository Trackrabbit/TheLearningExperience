SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10700SS_1] (@Navigation_ID char(15), @Table_Number smallint, @Field_Number smallint, @LNITMSEQ int) AS set nocount on SELECT TOP 1  Navigation_ID, Table_Number, Field_Number, LNITMSEQ, STRGA255, DEX_ROW_ID FROM .NLB10700 WHERE Navigation_ID = @Navigation_ID AND Table_Number = @Table_Number AND Field_Number = @Field_Number AND LNITMSEQ = @LNITMSEQ ORDER BY Navigation_ID ASC, Table_Number ASC, Field_Number ASC, LNITMSEQ ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10700SS_1] TO [DYNGRP]
GO
