SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_GPS_SQL_Error_CodesSI] (@Language_ID smallint, @CODE int, @SPROC char(31), @SMESSAGE char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .GPS_SQL_Error_Codes (Language_ID, CODE, SPROC, SMESSAGE) VALUES ( @Language_ID, @CODE, @SPROC, @SMESSAGE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GPS_SQL_Error_CodesSI] TO [DYNGRP]
GO
