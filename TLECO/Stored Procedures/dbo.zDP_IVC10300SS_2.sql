SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC10300SS_2] (@DOCTYPE smallint, @INVCNMBR char(21), @DISTTYPE smallint, @ACTINDX int) AS  set nocount on SELECT TOP 1  DOCTYPE, INVCNMBR, SEQNUMBR, DISTTYPE, DistRef, ACTINDX, DEBITAMT, CRDTAMNT, TRXSORCE, POSTED, DEX_ROW_ID FROM .IVC10300 WHERE DOCTYPE = @DOCTYPE AND INVCNMBR = @INVCNMBR AND DISTTYPE = @DISTTYPE AND ACTINDX = @ACTINDX ORDER BY DOCTYPE ASC, INVCNMBR ASC, DISTTYPE ASC, ACTINDX ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC10300SS_2] TO [DYNGRP]
GO