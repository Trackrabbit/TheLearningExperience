SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20232SI] (@Extender_Navigation_List int, @LNITMSEQ int, @Navigation_Detail_Type smallint, @Window_Number smallint, @Extender_Form_ID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20232 (Extender_Navigation_List, LNITMSEQ, Navigation_Detail_Type, Window_Number, Extender_Form_ID) VALUES ( @Extender_Navigation_List, @LNITMSEQ, @Navigation_Detail_Type, @Window_Number, @Extender_Form_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20232SI] TO [DYNGRP]
GO
