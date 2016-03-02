SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10210SI] (@Navigation_ID char(15), @COLNUMBR smallint, @LNITMSEQ int, @Table_Number smallint, @Field_Number smallint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .NLB10210 (Navigation_ID, COLNUMBR, LNITMSEQ, Table_Number, Field_Number) VALUES ( @Navigation_ID, @COLNUMBR, @LNITMSEQ, @Table_Number, @Field_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10210SI] TO [DYNGRP]
GO
