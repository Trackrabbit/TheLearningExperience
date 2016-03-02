SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10101SS_2] (@SALSTERR char(15), @SOPTYPE smallint, @SOPNUMBE char(21), @SLPRSNID char(15)) AS  set nocount on SELECT TOP 1  SOPTYPE, SOPNUMBE, SEQNUMBR, SLPRSNID, SALSTERR, COMPRCNT, COMMAMNT, OCOMMAMT, NCOMAMNT, ORNCMAMT, PRCTOSAL, ACTSLAMT, ORSLSAMT, CMMSLAMT, ORCOSAMT, CURRNIDX, TRXSORCE, DEX_ROW_ID FROM .SOP10101 WHERE SALSTERR = @SALSTERR AND SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND SLPRSNID = @SLPRSNID ORDER BY SALSTERR ASC, SOPTYPE ASC, SOPNUMBE ASC, SLPRSNID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10101SS_2] TO [DYNGRP]
GO
