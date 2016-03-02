SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00602SI] (@aaTreeID int, @aaNodeID int, @aaMstrID int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00602 (aaTreeID, aaNodeID, aaMstrID) VALUES ( @aaTreeID, @aaNodeID, @aaMstrID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00602SI] TO [DYNGRP]
GO
