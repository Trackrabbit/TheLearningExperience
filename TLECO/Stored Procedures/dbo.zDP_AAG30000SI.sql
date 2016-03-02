SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG30000SI] (@aaGLHdrID int, @JRNENTRY int, @RCTRXSEQ numeric(19,5), @YEAR1 smallint, @aaTRXType smallint, @aaGLTRXSource char(13), @aaTRXSource char(13), @GLPOSTDT datetime, @Ledger_ID smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG30000 (aaGLHdrID, JRNENTRY, RCTRXSEQ, YEAR1, aaTRXType, aaGLTRXSource, aaTRXSource, GLPOSTDT, Ledger_ID) VALUES ( @aaGLHdrID, @JRNENTRY, @RCTRXSEQ, @YEAR1, @aaTRXType, @aaGLTRXSource, @aaTRXSource, @GLPOSTDT, @Ledger_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG30000SI] TO [DYNGRP]
GO
