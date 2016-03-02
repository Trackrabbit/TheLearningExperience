SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM50505SI] (@POSTEDDT datetime, @CUSTNMBR char(15), @TRXSORCE char(13), @ORTRXSRC char(13), @DOCNUMBR char(21), @STRVAL char(133), @TRX_ID char(19), @ACCTAMNT numeric(19,5), @RMDTYPAL smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .RM50505 (POSTEDDT, CUSTNMBR, TRXSORCE, ORTRXSRC, DOCNUMBR, STRVAL, TRX_ID, ACCTAMNT, RMDTYPAL) VALUES ( @POSTEDDT, @CUSTNMBR, @TRXSORCE, @ORTRXSRC, @DOCNUMBR, @STRVAL, @TRX_ID, @ACCTAMNT, @RMDTYPAL) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM50505SI] TO [DYNGRP]
GO