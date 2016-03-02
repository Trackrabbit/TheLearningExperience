SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT80300SS_1] (@ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  ASI_Favorite_Dict_ID, ASI_Favorite_Type, SmartList_Function, Table_Names_1, Table_Names_2, Table_Names_3, Swap_Parameters, Use_Document_Types, DEX_ROW_ID, Document_Type_Code, Position_Table_Code FROM .EXT80300 WHERE ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type ORDER BY ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT80300SS_1] TO [DYNGRP]
GO
