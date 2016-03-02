SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG60000SI] (@USERID char(15), @TRXBTCHSRC char(51), @aaGLWorkHdrID int, @JRNENTRY int, @SERIES smallint, @GLPOSTDT datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG60000 (USERID, TRXBTCHSRC, aaGLWorkHdrID, JRNENTRY, SERIES, GLPOSTDT) VALUES ( @USERID, @TRXBTCHSRC, @aaGLWorkHdrID, @JRNENTRY, @SERIES, @GLPOSTDT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG60000SI] TO [DYNGRP]
GO