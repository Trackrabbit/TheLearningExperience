SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20021SI] (@Extender_List_ID int, @Extender_List_Item_ID int, @LNITMSEQ int, @STRNG132 char(133), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20021 (Extender_List_ID, Extender_List_Item_ID, LNITMSEQ, STRNG132) VALUES ( @Extender_List_ID, @Extender_List_Item_ID, @LNITMSEQ, @STRNG132) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20021SI] TO [DYNGRP]
GO
