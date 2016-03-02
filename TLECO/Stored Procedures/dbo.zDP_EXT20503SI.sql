SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20503SI] (@Extender_View_ID char(15), @LNITMSEQ int, @LNSEQNBR numeric(19,5), @Field_ID int, @Field_ID_2 int, @FIELDNAM char(31), @Field_Name_2 char(31), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20503 (Extender_View_ID, LNITMSEQ, LNSEQNBR, Field_ID, Field_ID_2, FIELDNAM, Field_Name_2) VALUES ( @Extender_View_ID, @LNITMSEQ, @LNSEQNBR, @Field_ID, @Field_ID_2, @FIELDNAM, @Field_Name_2) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20503SI] TO [DYNGRP]
GO
