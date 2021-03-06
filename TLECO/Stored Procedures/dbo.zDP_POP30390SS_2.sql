SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP30390SS_2] (@TRXSORCE char(13)) AS  set nocount on SELECT TOP 1  POPRCTNM, SEQNUMBR, ACTINDX, CRDTAMNT, ORCRDAMT, DEBITAMT, ORDBTAMT, DistRef, DISTTYPE, TRXSORCE, CURRNIDX, XCHGRATE, VENDORID, CURNCYID, RATETPID, EXGTBLID, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .POP30390 WHERE TRXSORCE = @TRXSORCE ORDER BY TRXSORCE ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP30390SS_2] TO [DYNGRP]
GO
