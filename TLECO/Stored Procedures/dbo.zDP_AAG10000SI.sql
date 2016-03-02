SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG10000SI] (@aaGLWorkHdrID int, @JRNENTRY int, @RCTRXSEQ numeric(19,5), @GLPOSTDT datetime, @aaTRXType smallint, @aaHdrErrors binary(4), @Ledger_ID smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG10000 (aaGLWorkHdrID, JRNENTRY, RCTRXSEQ, GLPOSTDT, aaTRXType, aaHdrErrors, Ledger_ID) VALUES ( @aaGLWorkHdrID, @JRNENTRY, @RCTRXSEQ, @GLPOSTDT, @aaTRXType, @aaHdrErrors, @Ledger_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG10000SI] TO [DYNGRP]
GO
