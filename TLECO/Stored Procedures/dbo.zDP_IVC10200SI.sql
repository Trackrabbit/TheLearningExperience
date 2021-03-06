SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC10200SI] (@DOCTYPE smallint, @INVCNMBR char(21), @SEQNUMBR int, @PYMTTYPE smallint, @RMDTYPAL smallint, @DOCNUMBR char(21), @CURNCYID char(15), @CHEKBKID char(15), @CARDNAME char(15), @RCTNCCRD char(21), @CHEKNMBR char(21), @AMNTPAID numeric(19,5), @DOCDATE datetime, @EXPNDATE datetime, @AUTHCODE char(15), @TRXSORCE char(13), @EFTFLAG tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IVC10200 (DOCTYPE, INVCNMBR, SEQNUMBR, PYMTTYPE, RMDTYPAL, DOCNUMBR, CURNCYID, CHEKBKID, CARDNAME, RCTNCCRD, CHEKNMBR, AMNTPAID, DOCDATE, EXPNDATE, AUTHCODE, TRXSORCE, EFTFLAG) VALUES ( @DOCTYPE, @INVCNMBR, @SEQNUMBR, @PYMTTYPE, @RMDTYPAL, @DOCNUMBR, @CURNCYID, @CHEKBKID, @CARDNAME, @RCTNCCRD, @CHEKNMBR, @AMNTPAID, @DOCDATE, @EXPNDATE, @AUTHCODE, @TRXSORCE, @EFTFLAG) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC10200SI] TO [DYNGRP]
GO
