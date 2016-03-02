SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP30390F_2] (@TRXSORCE_RS char(13), @TRXSORCE_RE char(13)) AS  set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  POPRCTNM, SEQNUMBR, ACTINDX, CRDTAMNT, ORCRDAMT, DEBITAMT, ORDBTAMT, DistRef, DISTTYPE, TRXSORCE, CURRNIDX, XCHGRATE, VENDORID, CURNCYID, RATETPID, EXGTBLID, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .POP30390 ORDER BY TRXSORCE ASC, DEX_ROW_ID ASC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  POPRCTNM, SEQNUMBR, ACTINDX, CRDTAMNT, ORCRDAMT, DEBITAMT, ORDBTAMT, DistRef, DISTTYPE, TRXSORCE, CURRNIDX, XCHGRATE, VENDORID, CURNCYID, RATETPID, EXGTBLID, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .POP30390 WHERE TRXSORCE = @TRXSORCE_RS ORDER BY TRXSORCE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  POPRCTNM, SEQNUMBR, ACTINDX, CRDTAMNT, ORCRDAMT, DEBITAMT, ORDBTAMT, DistRef, DISTTYPE, TRXSORCE, CURRNIDX, XCHGRATE, VENDORID, CURNCYID, RATETPID, EXGTBLID, EXCHDATE, TIME1, RATECALC, DENXRATE, MCTRXSTT, DEX_ROW_ID FROM .POP30390 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE ORDER BY TRXSORCE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP30390F_2] TO [DYNGRP]
GO
