SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV50501SI] (@POSTEDDT datetime, @JRNENTRY int, @DOCNUMBR char(21), @DOCTYPE smallint, @TRXSORCE char(13), @ORTRXSRC char(13), @STRVAL char(133), @TRX_ID char(19), @EXTDCOST numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV50501 (POSTEDDT, JRNENTRY, DOCNUMBR, DOCTYPE, TRXSORCE, ORTRXSRC, STRVAL, TRX_ID, EXTDCOST) VALUES ( @POSTEDDT, @JRNENTRY, @DOCNUMBR, @DOCTYPE, @TRXSORCE, @ORTRXSRC, @STRVAL, @TRX_ID, @EXTDCOST) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV50501SI] TO [DYNGRP]
GO
