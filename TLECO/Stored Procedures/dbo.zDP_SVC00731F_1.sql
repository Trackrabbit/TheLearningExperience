SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00731F_1] (@ORDDOCID_RS char(15), @LNITMSEQ_RS int, @SEQNUMBR_RS int, @SVC_Distribution_Type_RS smallint, @ORDDOCID_RE char(15), @LNITMSEQ_RE int, @SEQNUMBR_RE int, @SVC_Distribution_Type_RE smallint) AS  set nocount on IF @ORDDOCID_RS IS NULL BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC00731 ORDER BY ORDDOCID ASC, LNITMSEQ ASC, SEQNUMBR ASC, SVC_Distribution_Type ASC END ELSE IF @ORDDOCID_RS = @ORDDOCID_RE BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC00731 WHERE ORDDOCID = @ORDDOCID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE ORDER BY ORDDOCID ASC, LNITMSEQ ASC, SEQNUMBR ASC, SVC_Distribution_Type ASC END ELSE BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC00731 WHERE ORDDOCID BETWEEN @ORDDOCID_RS AND @ORDDOCID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE ORDER BY ORDDOCID ASC, LNITMSEQ ASC, SEQNUMBR ASC, SVC_Distribution_Type ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00731F_1] TO [DYNGRP]
GO
