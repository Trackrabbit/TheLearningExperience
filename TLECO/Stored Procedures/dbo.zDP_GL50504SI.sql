SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL50504SI] (@TRXDATE datetime, @JRNENTRY int, @ORTRXSRC char(13), @ORCTRNUM char(21), @ACTINDX int, @DEBITAMT numeric(19,5), @CRDTAMNT numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .GL50504 (TRXDATE, JRNENTRY, ORTRXSRC, ORCTRNUM, ACTINDX, DEBITAMT, CRDTAMNT) VALUES ( @TRXDATE, @JRNENTRY, @ORTRXSRC, @ORCTRNUM, @ACTINDX, @DEBITAMT, @CRDTAMNT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL50504SI] TO [DYNGRP]
GO
