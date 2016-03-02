SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP30390SI] (@POPRCTNM char(17), @SEQNUMBR int, @ACTINDX int, @CRDTAMNT numeric(19,5), @ORCRDAMT numeric(19,5), @DEBITAMT numeric(19,5), @ORDBTAMT numeric(19,5), @DistRef char(31), @DISTTYPE smallint, @TRXSORCE char(13), @CURRNIDX smallint, @XCHGRATE numeric(19,7), @VENDORID char(15), @CURNCYID char(15), @RATETPID char(15), @EXGTBLID char(15), @EXCHDATE datetime, @TIME1 datetime, @RATECALC smallint, @DENXRATE numeric(19,7), @MCTRXSTT smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .POP30390 (POPRCTNM, SEQNUMBR, ACTINDX, CRDTAMNT, ORCRDAMT, DEBITAMT, ORDBTAMT, DistRef, DISTTYPE, TRXSORCE, CURRNIDX, XCHGRATE, VENDORID, CURNCYID, RATETPID, EXGTBLID, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT) VALUES ( @POPRCTNM, @SEQNUMBR, @ACTINDX, @CRDTAMNT, @ORCRDAMT, @DEBITAMT, @ORDBTAMT, @DistRef, @DISTTYPE, @TRXSORCE, @CURRNIDX, @XCHGRATE, @VENDORID, @CURNCYID, @RATETPID, @EXGTBLID, @EXCHDATE, @TIME1, @RATECALC, @DENXRATE, @MCTRXSTT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP30390SI] TO [DYNGRP]
GO