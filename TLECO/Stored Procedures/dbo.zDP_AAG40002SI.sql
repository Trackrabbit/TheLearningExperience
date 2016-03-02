SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG40002SI] (@aaGLHdrID int, @aaGLDistID int, @aaGLAssignID int, @DEBITAMT numeric(19,5), @CRDTAMNT numeric(19,5), @ORDBTAMT numeric(19,5), @ORCRDAMT numeric(19,5), @aaAssignedPercent int, @DistRef char(31), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG40002 (aaGLHdrID, aaGLDistID, aaGLAssignID, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, aaAssignedPercent, DistRef, NOTEINDX) VALUES ( @aaGLHdrID, @aaGLDistID, @aaGLAssignID, @DEBITAMT, @CRDTAMNT, @ORDBTAMT, @ORCRDAMT, @aaAssignedPercent, @DistRef, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG40002SI] TO [DYNGRP]
GO
