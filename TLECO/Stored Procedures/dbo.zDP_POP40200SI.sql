SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP40200SI] (@USERID char(15), @EditAccessCreatedBy tinyint, @EditAccessAll tinyint, @INDEX1 smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .POP40200 (USERID, EditAccessCreatedBy, EditAccessAll, INDEX1) VALUES ( @USERID, @EditAccessCreatedBy, @EditAccessAll, @INDEX1) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP40200SI] TO [DYNGRP]
GO
