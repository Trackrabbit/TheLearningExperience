SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10996SI] (@DICTID smallint, @Language_ID smallint, @MSGNUM smallint, @SQL_MSG char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY10996 (DICTID, Language_ID, MSGNUM, SQL_MSG) VALUES ( @DICTID, @Language_ID, @MSGNUM, @SQL_MSG) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10996SI] TO [DYNGRP]
GO
