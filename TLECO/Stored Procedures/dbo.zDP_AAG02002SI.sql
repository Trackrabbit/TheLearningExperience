SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG02002SI] (@USERID char(15), @aaView tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG02002 (USERID, aaView) VALUES ( @USERID, @aaView) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG02002SI] TO [DYNGRP]
GO
