SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP400002SI] (@WINTYPE smallint, @USERID char(15), @CMPNYNAM char(65), @BCHSOURC char(15), @BACHNUMB char(15), @POSTING tinyint, @TRXSOURC char(25), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PP400002 (WINTYPE, USERID, CMPNYNAM, BCHSOURC, BACHNUMB, POSTING, TRXSOURC) VALUES ( @WINTYPE, @USERID, @CMPNYNAM, @BCHSOURC, @BACHNUMB, @POSTING, @TRXSOURC) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP400002SI] TO [DYNGRP]
GO
