SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20502SI] (@Extender_View_ID char(15), @LNITMSEQ int, @Field_ID int, @FIELDNAM char(31), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20502 (Extender_View_ID, LNITMSEQ, Field_ID, FIELDNAM) VALUES ( @Extender_View_ID, @LNITMSEQ, @Field_ID, @FIELDNAM) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20502SI] TO [DYNGRP]
GO
