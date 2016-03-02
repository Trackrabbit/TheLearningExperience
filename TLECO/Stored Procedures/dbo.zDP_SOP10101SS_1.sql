SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10101SS_1] (@SOPNUMBE char(21), @SOPTYPE smallint, @SEQNUMBR int) AS  set nocount on SELECT TOP 1  SOPTYPE, SOPNUMBE, SEQNUMBR, SLPRSNID, SALSTERR, COMPRCNT, COMMAMNT, OCOMMAMT, NCOMAMNT, ORNCMAMT, PRCTOSAL, ACTSLAMT, ORSLSAMT, CMMSLAMT, ORCOSAMT, CURRNIDX, TRXSORCE, DEX_ROW_ID FROM .SOP10101 WHERE SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND SEQNUMBR = @SEQNUMBR ORDER BY SOPNUMBE ASC, SOPTYPE ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10101SS_1] TO [DYNGRP]
GO
