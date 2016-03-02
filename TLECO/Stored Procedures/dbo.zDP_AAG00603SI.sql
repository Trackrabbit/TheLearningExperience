SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00603SI] (@USERID char(15), @aaNodeID int, @aaNode char(51), @aaLevel int, @aaParentNodeID int, @aaOrder int, @NOTEINDX numeric(19,5), @Status smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00603 (USERID, aaNodeID, aaNode, aaLevel, aaParentNodeID, aaOrder, NOTEINDX, Status) VALUES ( @USERID, @aaNodeID, @aaNode, @aaLevel, @aaParentNodeID, @aaOrder, @NOTEINDX, @Status) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00603SI] TO [DYNGRP]
GO
