SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10210SS_2] (@Navigation_ID char(15), @Table_Number smallint, @Field_Number smallint) AS set nocount on SELECT TOP 1  Navigation_ID, COLNUMBR, LNITMSEQ, Table_Number, Field_Number, DEX_ROW_ID FROM .NLB10210 WHERE Navigation_ID = @Navigation_ID AND Table_Number = @Table_Number AND Field_Number = @Field_Number ORDER BY Navigation_ID ASC, Table_Number ASC, Field_Number ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10210SS_2] TO [DYNGRP]
GO
