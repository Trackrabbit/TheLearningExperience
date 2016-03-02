SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC10300SS_3] (@TRXSORCE char(13), @ACTINDX int, @DOCTYPE smallint, @INVCNMBR char(21)) AS  set nocount on SELECT TOP 1  DOCTYPE, INVCNMBR, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, CRDTAMNT, TRXSORCE, POSTED, DEX_ROW_ID FROM .IVC10300 WHERE TRXSORCE = @TRXSORCE AND ACTINDX = @ACTINDX AND DOCTYPE = @DOCTYPE AND INVCNMBR = @INVCNMBR ORDER BY TRXSORCE ASC, ACTINDX ASC, DOCTYPE ASC, INVCNMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC10300SS_3] TO [DYNGRP]
GO