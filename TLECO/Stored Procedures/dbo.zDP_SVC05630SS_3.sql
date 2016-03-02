SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05630SS_3] (@RTV_Number char(15), @RTV_Line numeric(19,5), @POSTED tinyint, @LINITMTYP char(3), @SEQNUMBR int, @SVC_Distribution_Type smallint) AS  set nocount on SELECT TOP 1  RTV_Number, RTV_Line, LINITMTYP, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC05630 WHERE RTV_Number = @RTV_Number AND RTV_Line = @RTV_Line AND POSTED = @POSTED AND LINITMTYP = @LINITMTYP AND SEQNUMBR = @SEQNUMBR AND SVC_Distribution_Type = @SVC_Distribution_Type ORDER BY RTV_Number ASC, RTV_Line ASC, POSTED ASC, LINITMTYP ASC, SEQNUMBR ASC, SVC_Distribution_Type ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05630SS_3] TO [DYNGRP]
GO
