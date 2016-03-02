SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10300SI] (@Navigation_ID char(15), @Table_Number smallint, @LNITMSEQ int, @From_Field char(81), @To_Field char(81), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .NLB10300 (Navigation_ID, Table_Number, LNITMSEQ, From_Field, To_Field) VALUES ( @Navigation_ID, @Table_Number, @LNITMSEQ, @From_Field, @To_Field) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10300SI] TO [DYNGRP]
GO
