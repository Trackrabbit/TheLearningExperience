SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC10200SS_2] (@RMDTYPAL smallint, @DOCNUMBR char(21)) AS  set nocount on SELECT TOP 1  DOCTYPE, INVCNMBR, SEQNUMBR, PYMTTYPE, RMDTYPAL, DOCNUMBR, CURNCYID, CHEKBKID, CARDNAME, RCTNCCRD, CHEKNMBR, AMNTPAID, DOCDATE, EXPNDATE, AUTHCODE, TRXSORCE, EFTFLAG, DEX_ROW_ID FROM .IVC10200 WHERE RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR ORDER BY RMDTYPAL ASC, DOCNUMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC10200SS_2] TO [DYNGRP]
GO