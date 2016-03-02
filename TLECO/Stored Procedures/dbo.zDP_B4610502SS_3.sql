SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610502SS_3] (@DOCTYPE smallint, @VCHNUMWK char(17)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  RMDTYPAL, DOCNUMBR, SLPRSNID, SALSTERR, LNSEQNBR, COMDLRAM, DATE1, VENDORID, LOCNCODE, BSSI_Ground_Lease_Number, YEAR1, PERIODID, DOCTYPE, VCHNUMWK, BSSI_Transfered_Amount, DEX_ROW_ID FROM .B4610502 WHERE DOCTYPE = @DOCTYPE AND VCHNUMWK = @VCHNUMWK ORDER BY DOCTYPE ASC, VCHNUMWK ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610502SS_3] TO [DYNGRP]
GO