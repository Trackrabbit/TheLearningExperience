SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20235SI] (@Extender_Navigation_List int, @USERID char(15), @LNITMSEQ int, @Field_ID int, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20235 (Extender_Navigation_List, USERID, LNITMSEQ, Field_ID) VALUES ( @Extender_Navigation_List, @USERID, @LNITMSEQ, @Field_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20235SI] TO [DYNGRP]
GO
