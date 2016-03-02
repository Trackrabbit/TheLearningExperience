SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC35630L_1] (@RTV_Number_RS char(15), @RTV_Line_RS numeric(19,5), @LINITMTYP_RS char(3), @SEQNUMBR_RS int, @SVC_Distribution_Type_RS smallint, @RTV_Number_RE char(15), @RTV_Line_RE numeric(19,5), @LINITMTYP_RE char(3), @SEQNUMBR_RE int, @SVC_Distribution_Type_RE smallint) AS  set nocount on IF @RTV_Number_RS IS NULL BEGIN SELECT TOP 25  RTV_Number, RTV_Line, LINITMTYP, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC35630 ORDER BY RTV_Number DESC, RTV_Line DESC, LINITMTYP DESC, SEQNUMBR DESC, SVC_Distribution_Type DESC END ELSE IF @RTV_Number_RS = @RTV_Number_RE BEGIN SELECT TOP 25  RTV_Number, RTV_Line, LINITMTYP, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC35630 WHERE RTV_Number = @RTV_Number_RS AND RTV_Line BETWEEN @RTV_Line_RS AND @RTV_Line_RE AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE ORDER BY RTV_Number DESC, RTV_Line DESC, LINITMTYP DESC, SEQNUMBR DESC, SVC_Distribution_Type DESC END ELSE BEGIN SELECT TOP 25  RTV_Number, RTV_Line, LINITMTYP, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC35630 WHERE RTV_Number BETWEEN @RTV_Number_RS AND @RTV_Number_RE AND RTV_Line BETWEEN @RTV_Line_RS AND @RTV_Line_RE AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND SVC_Distribution_Type BETWEEN @SVC_Distribution_Type_RS AND @SVC_Distribution_Type_RE ORDER BY RTV_Number DESC, RTV_Line DESC, LINITMTYP DESC, SEQNUMBR DESC, SVC_Distribution_Type DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC35630L_1] TO [DYNGRP]
GO
