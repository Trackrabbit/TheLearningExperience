SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01105SS_1] (@CMRECNUM numeric(19,5), @LNITMSEQ int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  CMRECNUM, LNITMSEQ, DEX_ROW_ID, TXTFIELD FROM .EXT01105 WHERE CMRECNUM = @CMRECNUM AND LNITMSEQ = @LNITMSEQ ORDER BY CMRECNUM ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01105SS_1] TO [DYNGRP]
GO