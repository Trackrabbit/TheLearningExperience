SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01600SI] (@USERID char(15), @CMPNYNAM char(65), @FORMNAME char(79), @WINNAME char(79), @STICKPIN smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY01600 (USERID, CMPNYNAM, FORMNAME, WINNAME, STICKPIN) VALUES ( @USERID, @CMPNYNAM, @FORMNAME, @WINNAME, @STICKPIN) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01600SI] TO [DYNGRP]
GO
