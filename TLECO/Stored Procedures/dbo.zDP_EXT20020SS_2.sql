SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20020SS_2] (@Shared_List tinyint, @Extender_List_Desc char(31)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_List_ID, Extender_List_Desc, Shared_List, Sort_List_CB, DEX_ROW_ID FROM .EXT20020 WHERE Shared_List = @Shared_List AND Extender_List_Desc = @Extender_List_Desc ORDER BY Shared_List ASC, Extender_List_Desc ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20020SS_2] TO [DYNGRP]
GO
