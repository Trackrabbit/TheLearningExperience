SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20234SI] (@Extender_Navigation_List int, @LNITMSEQ int, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20234 (Extender_Navigation_List, LNITMSEQ) VALUES ( @Extender_Navigation_List, @LNITMSEQ) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20234SI] TO [DYNGRP]
GO
