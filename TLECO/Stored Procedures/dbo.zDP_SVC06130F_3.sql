SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06130F_3] (@WORECTYPE_RS smallint, @WORKORDNUM_RS char(11), @POSTED_RS tinyint, @SVC_Distribution_Type_RS smallint, @WORECTYPE_RE smallint, @WORKORDNUM_RE char(11), @POSTED_RE tinyint, @SVC_Distribution_Type_RE smallint) AS  set nocount on IF @WORECTYPE_RS IS NULL BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC06130 ORDER BY WORECTYPE ASC, WORKORDNUM ASC, POSTED ASC, SVC_Distribution_Type ASC, DEX_ROW_ID ASC END ELSE IF @WORECTYPE_RS = @WORECTYPE_RE BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC06130 WHERE WORECTYPE = @WORECTYPE_RS AND WORKORDNUM BETWEEN @WORKORDNUM_RS AND @WORKORDNUM_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE ORDER BY WORECTYPE ASC, WORKORDNUM ASC, POSTED ASC, SVC_Distribution_Type ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC06130 WHERE WORECTYPE BETWEEN @WORECTYPE_RS AND @WORECTYPE_RE AND WORKORDNUM BETWEEN @WORKORDNUM_RS AND @WORKORDNUM_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE ORDER BY WORECTYPE ASC, WORKORDNUM ASC, POSTED ASC, SVC_Distribution_Type ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06130F_3] TO [DYNGRP]
GO
