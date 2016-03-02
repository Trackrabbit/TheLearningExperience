SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT01205SS_1] (@CMRECNUM numeric(19,5), @Window_Number smallint, @LNITMSEQ int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  CMRECNUM, Window_Number, LNITMSEQ, DATE1, TIME1, USERID, DEX_ROW_ID, TXTFIELD FROM .EXT01205 WHERE CMRECNUM = @CMRECNUM AND Window_Number = @Window_Number AND LNITMSEQ = @LNITMSEQ ORDER BY CMRECNUM ASC, Window_Number ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT01205SS_1] TO [DYNGRP]
GO