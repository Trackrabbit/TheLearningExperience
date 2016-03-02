SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP51SI] (@ASI_Export_Application smallint, @ASI_Export_Name char(51), @ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @ASI_Favorite_Name char(81), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ASIEXP51 (ASI_Export_Application, ASI_Export_Name, ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Favorite_Name) VALUES ( @ASI_Export_Application, @ASI_Export_Name, @ASI_Favorite_Dict_ID, @ASI_Favorite_Type, @ASI_Favorite_Name) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP51SI] TO [DYNGRP]
GO
