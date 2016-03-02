SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00301SI] (@aaDistrQueryID int, @aaColumn smallint, @aaOrder int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00301 (aaDistrQueryID, aaColumn, aaOrder) VALUES ( @aaDistrQueryID, @aaColumn, @aaOrder) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00301SI] TO [DYNGRP]
GO
