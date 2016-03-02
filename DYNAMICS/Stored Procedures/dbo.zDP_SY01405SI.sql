SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01405SI] (@USERID char(15), @IniKeyName char(81), @IniKeyValue char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY01405 (USERID, IniKeyName, IniKeyValue) VALUES ( @USERID, @IniKeyName, @IniKeyValue) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01405SI] TO [DYNGRP]
GO
