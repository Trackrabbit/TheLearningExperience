SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00120SI] (@ITMCLSCD char(11), @INCLUDEINCATALOG smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV00120 (ITMCLSCD, INCLUDEINCATALOG) VALUES ( @ITMCLSCD, @INCLUDEINCATALOG) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00120SI] TO [DYNGRP]
GO
