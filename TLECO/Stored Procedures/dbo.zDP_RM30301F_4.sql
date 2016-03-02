SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM30301F_4] (@DSTINDX_RS int, @DSTINDX_RE int) AS  set nocount on IF @DSTINDX_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, POSTEDDT, DOCNUMBR, DISTTYPE, RMDTYPAL, SEQNUMBR, CUSTNMBR, DSTINDX, DEBITAMT, CRDTAMNT, PROJCTID, USERID, CATEGUSD, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, DistRef, DEX_ROW_ID FROM .RM30301 ORDER BY DSTINDX ASC, DEX_ROW_ID ASC END ELSE IF @DSTINDX_RS = @DSTINDX_RE BEGIN SELECT TOP 25  TRXSORCE, POSTEDDT, DOCNUMBR, DISTTYPE, RMDTYPAL, SEQNUMBR, CUSTNMBR, DSTINDX, DEBITAMT, CRDTAMNT, PROJCTID, USERID, CATEGUSD, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, DistRef, DEX_ROW_ID FROM .RM30301 WHERE DSTINDX = @DSTINDX_RS ORDER BY DSTINDX ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TRXSORCE, POSTEDDT, DOCNUMBR, DISTTYPE, RMDTYPAL, SEQNUMBR, CUSTNMBR, DSTINDX, DEBITAMT, CRDTAMNT, PROJCTID, USERID, CATEGUSD, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, DistRef, DEX_ROW_ID FROM .RM30301 WHERE DSTINDX BETWEEN @DSTINDX_RS AND @DSTINDX_RE ORDER BY DSTINDX ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM30301F_4] TO [DYNGRP]
GO
