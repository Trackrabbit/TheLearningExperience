SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10700SI] (@Navigation_ID char(15), @Table_Number smallint, @Field_Number smallint, @LNITMSEQ int, @STRGA255 char(255), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .NLB10700 (Navigation_ID, Table_Number, Field_Number, LNITMSEQ, STRGA255) VALUES ( @Navigation_ID, @Table_Number, @Field_Number, @LNITMSEQ, @STRGA255) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10700SI] TO [DYNGRP]
GO
