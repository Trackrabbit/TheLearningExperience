SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05630L_4] (@RTV_Number_RS char(15), @POSTED_RS tinyint, @SVC_Distribution_Type_RS smallint, @ACTINDX_RS int, @RTV_Line_RS numeric(19,5), @SEQNUMBR_RS int, @RTV_Number_RE char(15), @POSTED_RE tinyint, @SVC_Distribution_Type_RE smallint, @ACTINDX_RE int, @RTV_Line_RE numeric(19,5), @SEQNUMBR_RE int) AS  set nocount on IF @RTV_Number_RS IS NULL BEGIN SELECT TOP 25  RTV_Number, RTV_Line, LINITMTYP, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC05630 ORDER BY RTV_Number DESC, POSTED DESC, SVC_Distribution_Type DESC, ACTINDX DESC, RTV_Line DESC, SEQNUMBR DESC END ELSE IF @RTV_Number_RS = @RTV_Number_RE BEGIN SELECT TOP 25  RTV_Number, RTV_Line, LINITMTYP, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC05630 WHERE RTV_Number = @RTV_Number_RS AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND RTV_Line BETWEEN @RTV_Line_RS AND @RTV_Line_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY RTV_Number DESC, POSTED DESC, SVC_Distribution_Type DESC, ACTINDX DESC, RTV_Line DESC, SEQNUMBR DESC END ELSE BEGIN SELECT TOP 25  RTV_Number, RTV_Line, LINITMTYP, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC05630 WHERE RTV_Number BETWEEN @RTV_Number_RS AND @RTV_Number_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND RTV_Line BETWEEN @RTV_Line_RS AND @RTV_Line_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY RTV_Number DESC, POSTED DESC, SVC_Distribution_Type DESC, ACTINDX DESC, RTV_Line DESC, SEQNUMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05630L_4] TO [DYNGRP]
GO
