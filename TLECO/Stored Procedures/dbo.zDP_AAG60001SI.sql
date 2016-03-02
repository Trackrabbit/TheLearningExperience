SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG60001SI] (@USERID char(15), @TRXBTCHSRC char(51), @SERIES smallint, @aaGLWorkHdrID int, @aaGLWorkDistID int, @ACTINDX int, @DEBITAMT numeric(19,5), @CRDTAMNT numeric(19,5), @ORDBTAMT numeric(19,5), @ORCRDAMT numeric(19,5), @CURNCYID char(15), @CURRNIDX smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG60001 (USERID, TRXBTCHSRC, SERIES, aaGLWorkHdrID, aaGLWorkDistID, ACTINDX, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX) VALUES ( @USERID, @TRXBTCHSRC, @SERIES, @aaGLWorkHdrID, @aaGLWorkDistID, @ACTINDX, @DEBITAMT, @CRDTAMNT, @ORDBTAMT, @ORCRDAMT, @CURNCYID, @CURRNIDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG60001SI] TO [DYNGRP]
GO
