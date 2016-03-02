SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00304SI] (@USERID char(15), @aaWorkbookName char(65), @aaHdrIDCol smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00304 (USERID, aaWorkbookName, aaHdrIDCol) VALUES ( @USERID, @aaWorkbookName, @aaHdrIDCol) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00304SI] TO [DYNGRP]
GO
