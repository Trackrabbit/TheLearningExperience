SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00230L_1] (@SRVRECTYPE_RS smallint, @CALLNBR_RS char(11), @SEQNUMBR_RS int, @SVC_Distribution_Type_RS smallint, @SRVRECTYPE_RE smallint, @CALLNBR_RE char(11), @SEQNUMBR_RE int, @SVC_Distribution_Type_RE smallint) AS  set nocount on IF @SRVRECTYPE_RS IS NULL BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC00230 ORDER BY SRVRECTYPE DESC, CALLNBR DESC, SEQNUMBR DESC, SVC_Distribution_Type DESC END ELSE IF @SRVRECTYPE_RS = @SRVRECTYPE_RE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC00230 WHERE SRVRECTYPE = @SRVRECTYPE_RS AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE ORDER BY SRVRECTYPE DESC, CALLNBR DESC, SEQNUMBR DESC, SVC_Distribution_Type DESC END ELSE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC00230 WHERE SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE ORDER BY SRVRECTYPE DESC, CALLNBR DESC, SEQNUMBR DESC, SVC_Distribution_Type DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00230L_1] TO [DYNGRP]
GO
