SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS290000SS_1] (@SEQNUMBR int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SEQNUMBR, USERID, DATE1, BSSI_STR255_1, BSSI_STR255_2, BSSI_STR255_3, BSSI_STR255_4, BSSI_STR255_5, BSSI_STR255_6, BSSI_STR255_7, BSSI_STR255_8, BSSI_STR255_9, BSSI_STR255_10, BSSI_STR255_11, BSSI_STR255_12, BSSI_STR255_13, BSSI_STR255_14, BSSI_STR255_15, BSSI_Success, ERRDESCR, DEX_ROW_ID FROM .BS290000 WHERE SEQNUMBR = @SEQNUMBR ORDER BY SEQNUMBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS290000SS_1] TO [DYNGRP]
GO
