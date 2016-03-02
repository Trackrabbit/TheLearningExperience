SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM30301F_5] (@CUSTNMBR_RS char(15), @RMDTYPAL_RS smallint, @DOCNUMBR_RS char(21), @SEQNUMBR_RS int, @CUSTNMBR_RE char(15), @RMDTYPAL_RE smallint, @DOCNUMBR_RE char(21), @SEQNUMBR_RE int) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, POSTEDDT, DOCNUMBR, DISTTYPE, RMDTYPAL, SEQNUMBR, CUSTNMBR, DSTINDX, DEBITAMT, CRDTAMNT, PROJCTID, USERID, CATEGUSD, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, DistRef, DEX_ROW_ID FROM .RM30301 ORDER BY CUSTNMBR ASC, RMDTYPAL ASC, DOCNUMBR ASC, SEQNUMBR ASC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  TRXSORCE, POSTEDDT, DOCNUMBR, DISTTYPE, RMDTYPAL, SEQNUMBR, CUSTNMBR, DSTINDX, DEBITAMT, CRDTAMNT, PROJCTID, USERID, CATEGUSD, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, DistRef, DEX_ROW_ID FROM .RM30301 WHERE CUSTNMBR = @CUSTNMBR_RS AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY CUSTNMBR ASC, RMDTYPAL ASC, DOCNUMBR ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  TRXSORCE, POSTEDDT, DOCNUMBR, DISTTYPE, RMDTYPAL, SEQNUMBR, CUSTNMBR, DSTINDX, DEBITAMT, CRDTAMNT, PROJCTID, USERID, CATEGUSD, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, DistRef, DEX_ROW_ID FROM .RM30301 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY CUSTNMBR ASC, RMDTYPAL ASC, DOCNUMBR ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM30301F_5] TO [DYNGRP]
GO
