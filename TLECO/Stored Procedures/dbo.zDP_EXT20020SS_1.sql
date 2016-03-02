SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20020SS_1] (@Extender_List_ID int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_List_ID, Extender_List_Desc, Shared_List, Sort_List_CB, DEX_ROW_ID FROM .EXT20020 WHERE Extender_List_ID = @Extender_List_ID ORDER BY Extender_List_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20020SS_1] TO [DYNGRP]
GO
