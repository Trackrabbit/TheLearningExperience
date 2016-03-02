SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20020SI] (@Extender_List_ID int, @Extender_List_Desc char(31), @Shared_List tinyint, @Sort_List_CB tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20020 (Extender_List_ID, Extender_List_Desc, Shared_List, Sort_List_CB) VALUES ( @Extender_List_ID, @Extender_List_Desc, @Shared_List, @Sort_List_CB) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20020SI] TO [DYNGRP]
GO
