SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10102L_1] (@SOPTYPE_RS smallint, @SOPNUMBE_RS char(21), @SEQNUMBR_RS int, @SOPTYPE_RE smallint, @SOPNUMBE_RE char(21), @SEQNUMBR_RE int) AS  set nocount on IF @SOPTYPE_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, Contract_Exchange_Rate, DEX_ROW_ID FROM .SOP10102 ORDER BY SOPTYPE DESC, SOPNUMBE DESC, SEQNUMBR DESC END ELSE IF @SOPTYPE_RS = @SOPTYPE_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, Contract_Exchange_Rate, DEX_ROW_ID FROM .SOP10102 WHERE SOPTYPE = @SOPTYPE_RS AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY SOPTYPE DESC, SOPNUMBE DESC, SEQNUMBR DESC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, Contract_Exchange_Rate, DEX_ROW_ID FROM .SOP10102 WHERE SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY SOPTYPE DESC, SOPNUMBE DESC, SEQNUMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10102L_1] TO [DYNGRP]
GO
