SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC10400SS_4] (@TRXSORCE char(13), @SLPRSNID char(15)) AS  set nocount on SELECT TOP 1  DOCTYPE, INVCNMBR, SEQNUMBR, SLPRSNID, SALSTERR, COMPRCNT, COMDLRAM, NCOMAMNT, PRCTOSAL, SLSAMNT, COMMCODE, TRXSORCE, COMMFLAG, ACTVTYPE, DEX_ROW_ID FROM .IVC10400 WHERE TRXSORCE = @TRXSORCE AND SLPRSNID = @SLPRSNID ORDER BY TRXSORCE ASC, SLPRSNID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC10400SS_4] TO [DYNGRP]
GO