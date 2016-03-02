SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP51SS_1] (@ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @ASI_Favorite_Name char(81), @ASI_Export_Application smallint, @ASI_Export_Name char(51)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ASI_Export_Application, ASI_Export_Name, ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Favorite_Name, DEX_ROW_ID FROM .ASIEXP51 WHERE ASI_Favorite_Dict_ID = @ASI_Favorite_Dict_ID AND ASI_Favorite_Type = @ASI_Favorite_Type AND ASI_Favorite_Name = @ASI_Favorite_Name AND ASI_Export_Application = @ASI_Export_Application AND ASI_Export_Name = @ASI_Export_Name ORDER BY ASI_Favorite_Dict_ID ASC, ASI_Favorite_Type ASC, ASI_Favorite_Name ASC, ASI_Export_Application ASC, ASI_Export_Name ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP51SS_1] TO [DYNGRP]
GO
