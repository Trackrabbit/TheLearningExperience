SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10102F_3] (@SOPNUMBE_RS char(21), @SEQNUMBR_RS int, @SOPTYPE_RS smallint, @SOPNUMBE_RE char(21), @SEQNUMBR_RE int, @SOPTYPE_RE smallint) AS  set nocount on IF @SOPNUMBE_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, Contract_Exchange_Rate, DEX_ROW_ID FROM .SOP10102 ORDER BY SOPNUMBE ASC, SEQNUMBR ASC, SOPTYPE ASC END ELSE IF @SOPNUMBE_RS = @SOPNUMBE_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, Contract_Exchange_Rate, DEX_ROW_ID FROM .SOP10102 WHERE SOPNUMBE = @SOPNUMBE_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE ORDER BY SOPNUMBE ASC, SEQNUMBR ASC, SOPTYPE ASC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, Contract_Exchange_Rate, DEX_ROW_ID FROM .SOP10102 WHERE SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE ORDER BY SOPNUMBE ASC, SEQNUMBR ASC, SOPTYPE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10102F_3] TO [DYNGRP]
GO
