SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30230SS_2] (@SRVRECTYPE smallint, @CALLNBR char(11), @POSTED tinyint, @SEQNUMBR int, @SVC_Distribution_Type smallint) AS  set nocount on SELECT TOP 1  SRVRECTYPE, CALLNBR, SEQNUMBR, SVC_Distribution_Type, DistRef, ACTINDX, DEBITAMT, ORDBTAMT, CRDTAMNT, ORCRDAMT, CURRNIDX, TRXSORCE, POSTED, POSTEDDT, DEX_ROW_ID FROM .SVC30230 WHERE SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND POSTED = @POSTED AND SEQNUMBR = @SEQNUMBR AND SVC_Distribution_Type = @SVC_Distribution_Type ORDER BY SRVRECTYPE ASC, CALLNBR ASC, POSTED ASC, SEQNUMBR ASC, SVC_Distribution_Type ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30230SS_2] TO [DYNGRP]
GO
