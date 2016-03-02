SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00601SI] (@aaTreeID int, @aaNodeID int, @aaNode char(51), @aaLevel int, @aaParentNodeID int, @aaOrder int, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00601 (aaTreeID, aaNodeID, aaNode, aaLevel, aaParentNodeID, aaOrder, NOTEINDX) VALUES ( @aaTreeID, @aaNodeID, @aaNode, @aaLevel, @aaParentNodeID, @aaOrder, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00601SI] TO [DYNGRP]
GO
