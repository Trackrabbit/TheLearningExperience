SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00303SI] (@aaDistrQueryID int, @aaColumn smallint, @aaOrder int, @aaSortOrder smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00303 (aaDistrQueryID, aaColumn, aaOrder, aaSortOrder) VALUES ( @aaDistrQueryID, @aaColumn, @aaOrder, @aaSortOrder) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00303SI] TO [DYNGRP]
GO
