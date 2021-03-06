SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG70000SI] (@USERID char(15), @TRXBTCHSRC char(51), @aaGLHdrID int, @JRNENTRY int, @SERIES smallint, @GLPOSTDT datetime, @aaGLTRXSource char(13), @aaTRXSource char(13), @RCTRXSEQ numeric(19,5), @YEAR1 smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG70000 (USERID, TRXBTCHSRC, aaGLHdrID, JRNENTRY, SERIES, GLPOSTDT, aaGLTRXSource, aaTRXSource, RCTRXSEQ, YEAR1) VALUES ( @USERID, @TRXBTCHSRC, @aaGLHdrID, @JRNENTRY, @SERIES, @GLPOSTDT, @aaGLTRXSource, @aaTRXSource, @RCTRXSEQ, @YEAR1) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG70000SI] TO [DYNGRP]
GO
