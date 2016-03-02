SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC51100SI] (@WDC_Entity_ID int, @USRCLASS char(15), @CMPANYID smallint, @USERID char(15), @ACTIVE tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .WDC51100 (WDC_Entity_ID, USRCLASS, CMPANYID, USERID, ACTIVE) VALUES ( @WDC_Entity_ID, @USRCLASS, @CMPANYID, @USERID, @ACTIVE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC51100SI] TO [DYNGRP]
GO
