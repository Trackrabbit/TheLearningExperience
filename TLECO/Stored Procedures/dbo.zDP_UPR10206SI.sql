SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10206SI] (@DEPRTMNT char(7), @JOBTITLE char(7), @USERID char(15), @PYRNTYPE smallint, @EMPLOYID char(15), @TRXNUMBER int, @STATECD char(3), @TTLSTTAX numeric(19,5), @STTXTIPS numeric(19,5), @TXBLWAGS numeric(19,5), @TXBLTIPS numeric(19,5), @BLDCHERR binary(4), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR10206 (DEPRTMNT, JOBTITLE, USERID, PYRNTYPE, EMPLOYID, TRXNUMBER, STATECD, TTLSTTAX, STTXTIPS, TXBLWAGS, TXBLTIPS, BLDCHERR) VALUES ( @DEPRTMNT, @JOBTITLE, @USERID, @PYRNTYPE, @EMPLOYID, @TRXNUMBER, @STATECD, @TTLSTTAX, @STTXTIPS, @TXBLWAGS, @TXBLTIPS, @BLDCHERR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10206SI] TO [DYNGRP]
GO
